
// Internal headers
#include "utility/SimpleAgent.h"
#include "device/temp_sensors.h"
#include "device/switch.h"
#include "cubesat_defs.h"

// Standard headers
#include <iostream>
#include <fstream>
#include <unordered_map>

// The number of heaters available
#define NUM_HEATERS 1
// The interval between iterations in the run_agent() function
#define SLEEP_TIME 1

using namespace std;
using namespace cubesat;


// The agent object which allows for communication with COSMOS
SimpleAgent *agent;
Heater *heater;

TemperatureSensor *temp_sensor[TEMPSENSOR_COUNT];


// Other settings
float heater_enable_temp = 5; // Enable heater when temperatures are below this value (celcius)
float heater_disable_temp = 20; // Disable heater when temperatures are above this value (celcius)

/**
 * @brief Checks the latest temperatures and handles activation of the heaters if necessary.
 */
void HandleTemperatures();
/**
 * @brief Retrieves the temperatures from agent_temp
 */
void GetTemperatures();
/**
 * @brief Switchs a heater on or off via agent_switch
 * @param enabled Set to true to enable a heater, or false to disable a heater
 */
void SetHeaterState(bool enabled);


//! Request to enable, disable, or check the status of the heaters
string Request_Heater(vector<string> args);



int main(int argc, char** argv) {
	// Create the agent
	agent = new SimpleAgent(CUBESAT_AGENT_HEATER_NAME, CUBESAT_NODE_NAME, true);
	agent->CrashIfNotOpen();
	agent->SetLoopPeriod(SLEEP_TIME);
	currentmjd();
	
	// Add heater
	heater = agent->NewDevice<Heater>("heater");
	heater->Post(heater->utc);
	heater->Post(heater->enabled);
	heater->Post(heater->voltage);
	heater->utc = Time::Now();
	heater->enabled =false;
	heater->voltage = 0;
	
	// Add temperature sensors and set default values
	temp_sensor[0] = agent->NewDevice<TemperatureSensor>("temp_eps");
	temp_sensor[1] = agent->NewDevice<TemperatureSensor>("temp_obc");
	temp_sensor[2] = agent->NewDevice<TemperatureSensor>("temp_raspi");
	temp_sensor[3] = agent->NewDevice<TemperatureSensor>("temp_battery");
	temp_sensor[4] = agent->NewDevice<TemperatureSensor>("temp_pycubed");
	
	for (int i = 0; i < TEMPSENSOR_COUNT; ++i) {
		temp_sensor[i]->utc = Time::Now();
		temp_sensor[i]->temperature = 273.15;
	}
	
	// Let the agent know all the devices have been set up
	agent->Finalize();
	
	// Add request callbacks
	agent->AddRequest({"heater", "state", "set", "get"}, Request_Heater, "Enables, disables, or displays the status of the heater", "Usage: heater [on | off]");
	
	// Debug print
	agent->DebugPrint();
	
	// Make sure the heater is disabled
	SetHeaterState(false);
	
	
	// Start executing the agent
	while ( agent->StartLoop() ) {
		
		// Update sensor readings
		GetTemperatures();
		
		// Act on temperature readings
		HandleTemperatures();
	}
	
	return 0;
}


void GetTemperatures() {
	static RemoteAgent agent_temp = agent->FindAgent(CUBESAT_AGENT_TEMP_NAME);
	
	// Attempt to reconnect to agent_temp
	if ( !agent_temp.Connect() ) {
		return;
	}
	
	// Get the temperature and timestamp values from agent_temp
	auto values = agent_temp.GetCOSMOSValues({
										   "device_tsen_temp_000", "device_tsen_utc_000",
										   "device_tsen_temp_001", "device_tsen_utc_001",
										   "device_tsen_temp_002", "device_tsen_utc_002",
										   "device_tsen_temp_003", "device_tsen_utc_003",
										   "device_tsen_temp_004", "device_tsen_utc_004"
									   });
	
	// Check if the values were not retrieved
	if ( values.empty() ) {
		printf("Failed to get temperatures from agent_temp\n");
		return;
	}
	
	// Store the temperatures and timestamps
	for (int i = 0; i < TEMPSENSOR_COUNT; ++i) {
		temp_sensor[i]->utc = values["device_tsen_utc_00" + std::to_string(i)].nvalue;
		temp_sensor[i]->temperature = values["device_tsen_temp_00" + std::to_string(i)].nvalue;
	}
}


void HandleTemperatures() {
	
	// TODO: Handle other temperature sensors. For now, only the battery temperature is used.
	
	// Get the battery temperature
	float temp = temp_sensor[TEMPSENSOR_BATT_ID]->temperature;
	
	// Handle temperature ranges
	// Temperature below value needed to enable heater
	if ( temp < heater_enable_temp ) {
		cout << "Temperature read from " << TEMPSENSOR_BATT_NAME << " is too low (" << temp << " C)" << endl;
		
		// Enable the heater
		SetHeaterState(true);
	}
	// Temperature above value needed to disable heater
	else if ( temp > heater_disable_temp ) {
		cout << "Temperature read from " << TEMPSENSOR_BATT_NAME << " is sufficiently high (" << temp << " C)" << endl;
		
		// Disable the heater
		SetHeaterState(false);
	}
	
	heater->utc = Time::Now();
}


void SetHeaterState(bool enabled) {
	static RemoteAgent agent_switch = agent->FindAgent(CUBESAT_AGENT_SWITCH_NAME);
	
	// Check if agent_switch has been connected to yet
	if ( !agent_switch.Connect() ) {
		return;
	}
	
	
	std::string request_str = enabled ? "enable" : "disable";
	
	cout << "Attempting to " << request_str << "heater" << endl;
	
	
	// Send a request to enable or disable the heater
	string response = agent_switch.SendRequest(request_str, SWITCH_HEATER_NAME);
	
	// Check if an error occurred
	if ( response.empty() ) {
		printf("Failed to send enable/disable request to agent_switch\n");
		return;
	}
	
	// Set the heater properties
	heater->utc = Time::Now();
	heater->enabled = enabled;
}


string Request_Heater(vector<string> args) {
	
	bool change_state = false;
	bool new_state = true;
	
	if ( args.size() == 0 );
	else if ( args.size() == 1 ) {
		change_state = true;
		ToLowercaseInPlace(args[0]);
		
		if ( args[0] == "on" || args[0] == "yes" )
			new_state = true;
		else if ( args[0] == "off" || args[0] == "no" )
			new_state = false;
		else
			return "Usage: heater [on | off]";
	}
	else
		return "Usage: heater [on | off]";
	
	if ( change_state ) {
		SetHeaterState(new_state);
		return "OK";
	}
	else {
		stringstream ss;
		ss <<	"{";
		ss <<		"\"enabled\": " << (heater->enabled ? "true" : "false");
		ss <<	"}";
		
		return ss.str();
	}
}
