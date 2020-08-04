
// Internal headers
#include "utility/SimpleAgent.h"
#include "device/OPT3001.h"
#include "device/sun_sensors.h"

#include <iostream>
#include <fstream>
#include <unordered_map>

// The interval between iterations in the run_agent() function
#define SLEEP_TIME 1

using namespace std;
using namespace cubesat;


// The agent object which allows for communication with COSMOS
SimpleAgent *agent;


// A convenient struct for storing sun sensor information
SunSensor *sun_sensor[SUNSENSOR_COUNT];
OPT3001 *handlers[SUNSENSOR_COUNT];
OPT3001::Configuration default_sensor_config;
bool should_enable_sensors = true; // Whether or not the sensors should be enabled
bool sensors_powered = false; // Whether or not the sensors are actually enabled

struct DeviceAddress {
	uint8_t i2c_bus;
	uint8_t dev_addr;
};

DeviceAddress devices_addresses[SUNSENSOR_COUNT] =  {
	{0x00, 0x00},
	{0x00, 0x00},
	{0x00, 0x00},
	{0x00, 0x00},
	{0x00, 0x00},
	{0x00, 0x00},
};

// =========== Function Prototypes ===========


//! Initializes the sensor devices
void InitSensors();
//! Initializes a sensor
void InitSensor(int index);
//! Attempts to connect a sensor
bool ConnectSensor(int index);
//! Wraps up communication with the sensor devices
void DestroySensors();
//! Grabs the latest readings from a sensor device
void UpdateSensor(int index);
//! Enables/disables power to sensors via agent_switch
void SetSensorPower(bool enabled);


// Request callbacks
int32_t request_sensor(char *request, char* response, Agent *agent);
int32_t request_list(char *request, char* response, Agent *agent);

string Request_Sensor(vector<string> args);
string Request_List();


// ===========================================







int main(int argc, char** argv) {
	
	// Create the agent
	agent = new SimpleAgent(CUBESAT_AGENT_SUNSENSOR_NAME);
	agent->SetLoopPeriod(SLEEP_TIME);
	
	// Add the sun sensor devices
	sun_sensor[0] = agent->NewDevice<SunSensor>(SUNSENSOR_PLUSX_NAME);
	sun_sensor[1] = agent->NewDevice<SunSensor>(SUNSENSOR_MINUSX_NAME);
	sun_sensor[2] = agent->NewDevice<SunSensor>(SUNSENSOR_PLUSY_NAME);
	sun_sensor[3] = agent->NewDevice<SunSensor>(SUNSENSOR_MINUSY_NAME);
	sun_sensor[4] = agent->NewDevice<SunSensor>(SUNSENSOR_PLUSZ_NAME);
	sun_sensor[5] = agent->NewDevice<SunSensor>(SUNSENSOR_MINUSZ_NAME);
	
	for (int i = 0; i < SUNSENSOR_COUNT; ++i) {
		sun_sensor[i]->Post(sun_sensor[i]->utc = Time::Now());
		sun_sensor[i]->Post(sun_sensor[i]->temperature = 0);
		sun_sensor[i]->Post(sun_sensor[i]->voltage = 0);
	}
	
	agent->Finalize();
	
	agent->AddRequest("sensor", Request_Sensor, "Returns the status of a sensor");
	agent->AddRequest("list", Request_List, "Returns a list of sensors");
	
	// Initialize the sun sensors
	InitSensors();
	
	// Run the main loop for this agent
	while ( agent->StartLoop() ) {
		
		
		// Ensure correct power mode
		SetSensorPower(should_enable_sensors);
		
		// Update sensor readings
		for (int i = 0; i < SUNSENSOR_COUNT; ++i)
			UpdateSensor(i);
		
	}
	
	DestroySensors();
	delete agent;
	
	return 0;
}

void InitSensor(int index) {
	DeviceAddress config = devices_addresses[index];
	handlers[index] = new OPT3001(config.i2c_bus, config.dev_addr);
	sun_sensor[index]->SetCustomProperty<OPT3001*>("handler", handlers[index]);
}


void InitSensors() {
	// Set default configuration values
	default_sensor_config.RangeNumber = 0b1100; // This is the only available mode
	default_sensor_config.ConversionTime = 1; // 0 = 100ms, 1 = 800 ms
	default_sensor_config.ModeOfConversionOperation = 0; // 00 = Shutdown, 01 = Single-shot, 10,11 = continuous conversion
	default_sensor_config.Latch = 1;
	default_sensor_config.Polarity = 0; // 0 = INT pin active low, 1 = INT pin active high
	default_sensor_config.MaskExponent = 0;
	default_sensor_config.FaultCount = 0; // 00 = One fault, 01 = two faults, 10 = four faults, 11 = eight faults
	
	// Initialize each sensor
	for (int i = 0; i < SUNSENSOR_COUNT; ++i)
		InitSensor(i);
}

bool ConnectSensor(int index) {
	
	SunSensor *sensor = sun_sensor[index];
	OPT3001 *handler = handlers[index];
	
	sensor->utc = Time::Now();
	
	// Check if the sensor is already connected
	if ( handler->IsOpen() )
		return true;
	
	
	// Attempt to open the device
	if ( handler->Open() < 0 ) {
		printf("Failed to open sun sensor '%s' on I2C Bus %d at address %02x\n",
			   sensor->GetName().c_str(),
			   handler->GetBusAddr(), handler->GetDeviceAddr());
		
		handler->Close();
		
		sensor->voltage = 0;
		
		return false;
	}
	else {
		
		// Set sun sensor configuration
		handler->SetConfiguration(default_sensor_config);
		sensor->voltage = 0;
		
		printf("Successfully opened sun sensor '%s'\n", sensor->GetName().c_str());
		
		return true;
	}
}

void DestroySensors() {
	for (int i = 0; i < SUNSENSOR_COUNT; ++i) {
		delete handlers[i];
		handlers[i] = nullptr;
	}
}

void UpdateSensor(int index) {
	ConnectSensor(index);
	
	SunSensor *sensor = sun_sensor[index];
	OPT3001 *handler = handlers[index];
	
	if ( handler->IsOpen() ) {
		handler->ReadState();
		
		// Update the device properties
		sensor->utc = Time::Now();
		sensor->temperature = handler->GetLux();
	}
	
}

void SetSensorPower(bool enable) {
	should_enable_sensors = enable;
	
	static RemoteAgent agent_switch = agent->FindAgent(CUBESAT_AGENT_SWITCH_NAME);
	
	if ( agent_switch.Connect() ) {
		// Request to enable/disable power to sun sensor switch
		string response = agent_switch.SendRequest("enable", "sw_ss");
		
		// Check if the request was successful
		if ( response.find("NOK") == string::npos )
			sensors_powered = enable;
		
		// If they are disabled, make sure the sensors are closed
		if ( !sensors_powered ) {
			for (int i = 0; i < SUNSENSOR_COUNT; ++i)
				handlers[i]->Close();
		}
	}
}

string Request_Sensor(vector<string> args) {
	// Check if the device name is valid
	if ( !agent->DeviceExists(args[0]) )
		return "No matching sensor";
	
	SunSensor *device = agent->GetDevice<SunSensor>(args[0]);
	OPT3001 *handler = device->GetCustomProperty<OPT3001*>("handler");
	
	// Generate the response
	stringstream ss;
	ss << "{";
	ss <<	"\"utc\": " << device->utc << ", ";
	ss <<	"\"lux\": " << device->temperature << ", ";
	ss <<	"\"i2c_bus\": " << (handler != nullptr ? std::to_string(handler->GetBusAddr()) : "N/A") << ", ";
	ss <<	"\"address\": " << (handler != nullptr ? std::to_string(handler->GetDeviceAddr()) : "N/A") << ", ";
	ss <<	"\"enabled\": " << (handler != nullptr ? std::to_string(handler->IsOpen()) : "true");
	ss << "}";
	
	return ss.str();
}

string Request_List() {
	
	stringstream ss;
	
	// Use a convenient lambda function to add sensor information
	auto add_sensor_info = [&ss](SunSensor *sensor) {
		OPT3001 *device = sensor->GetCustomProperty<OPT3001*>("handler");
		
		ss <<	"\"" << sensor->GetName() << "\": {";
		ss <<		"\"utc\": " << sensor->utc << ", ";
		ss <<		"\"lux\": " << sensor->temperature << ",";
		ss <<		"\"spi_bus\": " << (device != nullptr ? std::to_string(device->GetBusAddr()) : "N/A") << ", ";
		ss <<		"\"address\": " << (device != nullptr ? std::to_string(device->GetDeviceAddr()) : "N/A") << ", ";
		ss <<		"\"enabled\": " << (device != nullptr ? std::to_string(device->IsOpen()) : "true");
		
		ss <<	"},";
	};
	
	ss << "{";
	for (int i = 0; i < SUNSENSOR_COUNT; ++i)
		add_sensor_info(sun_sensor[i]);
	ss << "}";
	
	return ss.str();
}
