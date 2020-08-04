/*
 * agent_switch.cpp
 * 
 * Agent which handles switching of power lines
 */ 

#include "utility/SimpleAgent.h"
#include "device/switch.h"

#include <iostream>
#include <fstream>
#include <sstream>

// The interval between iterations in the run_agent() function
#define SLEEP_TIME 1

using namespace std;
using namespace cubesat;

// The agent object which allows for communication with COSMOS
SimpleAgent *agent;
Switch *switches[SWITCH_COUNT];
PDUSwitch *handlers[SWITCH_COUNT];

// =========== Function Prototypes ===========

/**
 * @brief Sets up the agent. Prints a message and exits with code 1 if an error occurs during setup.
 */
void InitAgent();
/**
 * @brief Initializes a PDU switch
 * @param device The switch device
 */
void InitSwitch(int switch_id);
/**
 * @brief UpdateSwitch Updates a switch
 * @param device The switch device
 */
void UpdateSwitch(int switch_id);


/**
 * @brief Attempts to set the state of a switch (on/off)
 * @param switch_id The switch ID number. See the file device/switched_devices.h for more info
 * @param enabled True for on, false for off
 */
void SetSwitchState(int switch_id, bool enabled);


// Request callbacks

string Request_Switch(vector<string> args);
string Request_List();
// ===========================================






int main(int argc, char** argv) {
	
	agent = new SimpleAgent(CUBESAT_AGENT_SWITCH_NAME);
	agent->SetLoopPeriod(SLEEP_TIME);
	
	switches[0] = agent->NewDevice<Switch>(SWITCH_HEATER_NAME);
	switches[1] = agent->NewDevice<Switch>(SWITCH_TEMPSENSOR_NAME);
	switches[2] = agent->NewDevice<Switch>(SWITCH_SUNSENSOR_NAME);
	
	for (int i = 0; i < SWITCH_COUNT; ++i) {
		switches[i]->Post(switches[i]->utc = Time::Now());
		switches[i]->Post(switches[i]->voltage = 0);
		switches[i]->Post(switches[i]->enabled = false);
		switches[i]->SetCustomProperty<int>("index", i);
	}
	
	agent->Finalize();
	
	agent->AddRequest({"switch", "state", "set", "get"}, Request_Switch, "Gets or sets the status of a switch", "Usage: switch switch_name [on | off]");
	agent->AddRequest("list", Request_List, "Lists available switches");
	
	agent->DebugPrint();
	
	
	
	// Initialize the switches
	for (int i = 0; i < SWITCH_COUNT; ++i)
		InitSwitch(i);
	
	// Run the main loop for this agent
	while ( agent->StartLoop() ) {
		
		for (int i = 0; i < SWITCH_COUNT; ++i)
		UpdateSwitch(i);
	}
	
	
	delete agent;
	
	
	return 0;
}


void UpdateSwitch(int index) {
	PDUSwitch *pdu_switch = handlers[index];
	bool enabled = (pdu_switch->GetState() == SwitchState::On);
	
	switches[index]->utc = Time::Now();
	switches[index]->enabled = enabled;
	switches[index]->voltage = enabled ? 3.3 : 0;
}

void InitSwitch(int index) {
	
	PDUSwitch *pdu_switch = new PDUSwitch(PDUSwitch::GetSwitchName((SwitchID)index));
	if ( !pdu_switch->IsValid() )
		printf("Failed to add switch '%s'\n", switches[index]->GetName().c_str());
	else
		printf("Added switch '%s'\n", switches[index]->GetName().c_str());
	
	switches[index]->SetCustomProperty<PDUSwitch*>("handler", pdu_switch);
}

void SetSwitchState(int index, bool enabled) {
	
	PDUSwitch *pdu_switch = handlers[index];
	
	// Turn the switch on or off
	bool old_state = pdu_switch->GetState() == SwitchState::On;
	bool new_state = pdu_switch->SetState(enabled ? SwitchState::On : SwitchState::Off) == SwitchState::On;
	
	if ( new_state != enabled )
		printf("Failed to set switch '%s' to '%s'\n",
			   switches[index]->GetName().c_str(), enabled ? "ON" : "OFF");
	else if ( new_state != old_state )
		printf("Set switch '%s' to '%s'\n",
			   switches[index]->GetName().c_str(), enabled ? "ON" : "OFF");
	
	// Update switch state
	switches[index]->utc = Time::Now();
	switches[index]->enabled = new_state;
	switches[index]->voltage = (new_state ? 3.3 : 0);
}

string Request_Switch(vector<string> args) {
	
	bool change_state = false;
	bool state = true;
	
	if ( args.size() == 1 );
	else if ( args.size() == 2 ) {
		change_state = true;
		args[1] = ToLowercase(args[1]);
		
		if ( args[1] == "on" || args[1] == "yes" )
			state = true;
		else if ( args[1] == "off" || args[1] == "no" )
			state = false;
		else
			return "Usage: switch switch_name [on | off]";
	}
	else
		return "Usage: switch switch_name [on | off]";
	
	// Check if all switches should be set
	if ( args[0] == "all" ) {
		for (int i = 0; i < SWITCH_COUNT; ++i)
			SetSwitchState(i, state);
		
		return "OK";
	}
	
	Switch *device;
	if ( (device = agent->GetDevice<Switch>(args[0])) == nullptr )
		return "No matching switch";
	
	int index = device->GetCustomProperty<int>("index");
	
	if ( change_state ) {
		SetSwitchState(index, state);
		return "OK";
	}
	else {
		PDUSwitch *pdu_switch = handlers[index];
		
		stringstream ss;
		ss <<	"{";
		ss <<		"\"enabled\": " << (device->enabled ? "true" : "false") << ", ";
		ss <<		"\"gpio_pin_key\": \"" << pdu_switch->GetPinKey() << "\", ";
		ss <<		"\"gpio_pin_number\": " << pdu_switch->GetPinNumber();
		ss <<	"}";
		
		return ss.str();
	}
}

string Request_List() {
	stringstream ss;
	
	auto add_switch_info = [&ss](int index) {
		PDUSwitch *pdu_switch = handlers[index];
		Switch *device = switches[index];
		ss <<	"\"" << device->GetName() << "\": {";
		ss <<		"\"enabled\": " << (device->enabled ? "true" : "false") << ", ";
		ss <<		"\"gpio_pin_key\": \"" << pdu_switch->GetPinKey() << "\", ";
		ss <<		"\"gpio_pin_number\": " << pdu_switch->GetPinNumber();
		ss <<	"}, ";
	};
	ss << "{";
	for (int i = 0; i < SWITCH_COUNT; ++i)
		add_switch_info(i);
	ss << "}";
	
	return ss.str();
}
