
#include "utility/SimpleAgent.h"

using namespace std;
using namespace cubesat;

SimpleAgent* SimpleAgent::instance = nullptr;

SimpleAgent::SimpleAgent(const std::string &name, std::string node,
			bool crash_if_not_open) : Agent(node, name) {
	
	// Throw an exception if another SimpleAgent already is running
	if ( SimpleAgent::instance != nullptr ) {
		throw MultipleSimpleAgentException("Another SimpleAgent is already running in this process");
	}
	SimpleAgent::instance = this;
	
	
	// Check if the agent started successfully
	if ( !IsOpen() ) {
		printf("Could not start agent '%s' on node '%s'\n", name.c_str(), node.c_str());
		
		if ( crash_if_not_open )
			exit(1);
	}
	else {
		AddRequest("print", _Request_DebugPrint, "Prints all added devices and requests");
		AddRequest("getproperty", _Request_GetProperty, "Gets one or more properties from this SimpleAgent");
	}
	
	this->loop_started = false;
	SetLoopPeriod(1);
}

//===============================================================
//======================== MISCELLANEOUS ========================
//===============================================================

void SimpleAgent::CrashIfNotOpen() {
	
	// Crash if the agent isn't running
	if ( !IsOpen() ) {
		printf("Fatal: failed to open agent '%s' on node '%s'\n",
			   agentName.c_str(), nodeName.c_str());
		exit(1);
	}
}

void SimpleAgent::Finalize() {
	
	// Add the posted properties from each device
	std::vector<std::string> keys;
	for (auto device_pair : devices) {
		device_pair.second->StorePostedProperties(keys);
	}
	
	
	// Format the state of health string using a stringstream
	std::stringstream ss;
	
	// Add all posted properties
	ss << "{";
	for (const std::string &key : keys) {
		ss << "\"" << key << "\",";
	}
	for (auto node_property_pair : node_properties) {
		if ( node_property_pair.second.post )
			ss << "\"" << node_property_pair.second.cosmos_name << "\", ";
	}
	ss << "}";
	
	// Set the state of health string
	this->set_sohstring(ss.str());
}


bool SimpleAgent::StartLoop() {
	// Check if the agent is actually running
	if ( !this->IsRunning() )
		return false;
	
	// Check if this is the first time this function has been called
	if ( !loop_started ) {
		loop_started = true;
		
		// Since this isn't the first iteration, idle until the next one should start
		this->finish_active_loop();
	}
	
	// Idle until the next loop should start
	this->finish_active_loop();
	
	// Update the node timestamp
	this->cinfo->node.utc = currentmjd();
	
	// Start the active loop
	this->start_active_loop();
	
	return true;
}

//===============================================================
//======================== REMOTE AGENTS ========================
//===============================================================

RemoteAgent SimpleAgent::FindAgent(const std::string &name, const std::string &node, float wait_sec, bool crash_if_failed) {
	
	// Try to find the other agent
	beatstruc beat = this->find_agent(node, name, wait_sec);
	
	// Check if an error occurred
	if ( beat.utc == 0. || !beat.exists ) {
		printf("Could not find agent '%s' running on node '%s'\n", name.c_str(), node.c_str());
		
		if ( crash_if_failed )
			exit(1);
	}
	
	// Return the other agent
	return RemoteAgent(node, name, GetComplexAgent(), beat);
}

//===============================================================
//========================== REQUESTS ===========================
//===============================================================

bool SimpleAgent::AddRequest(const std::string &request_name, ArgumentedRequest request_callback, std::string synopsis, std::string description, bool crash_on_error) {
	
	// Add the request proxy to the agent instead, using the given request name
	int status = this->add_request(request_name, RequestProxy, synopsis, description);
	
	// Check for errors
	if ( status < 0 ) {
		printf("Failed to add request (alias '%s'): %s\n", request_name.c_str(), cosmos_error_string(status).c_str());
		
		if ( crash_on_error )
			exit(status);
	}
	else {
		// Create a new request data object
		ArgumentedRequestData request;
		request.callback = request_callback;
		
		// Store the request data by name
		argumented_requests[request_name] = request;
	}
	
	return status >= 0;
}

bool SimpleAgent::AddRequest(const std::string &request_name, NonArgumentedRequest request_callback, std::string synopsis, std::string description, bool crash_on_error) {
	
	// Add the request proxy to the agent instead, using the given request name
	int status = this->add_request(request_name, RequestProxy, synopsis, description);
	
	// Check for errors
	if ( status < 0 ) {
		printf("Failed to add request (alias '%s'): %s\n", request_name.c_str(), cosmos_error_string(status).c_str());
		
		if ( crash_on_error )
			exit(status);
	}
	else {
		// Create a new request data object
		NonArgumentedRequestData request;
		request.callback = request_callback;
		
		// Store the request data by name
		non_argumented_requests[request_name] = request;
	}
	
	return status >= 0;
}


bool SimpleAgent::AddRequest(std::initializer_list<std::string> request_names, ArgumentedRequest request_callback, std::string synopsis, std::string description, bool crash_on_error) {
	
	// Add aliases for the request
	bool success = true;
	
	// Add the requests
	// Agh why doesn't std::initializer_list have a subscript operator??
	int i = 0;
	std::string first_name;
	for (const std::string &name : request_names) {
		// After the first request, set the synopsis as 'Alias of ...'
		if ( i == 0 ) {
			success = success && AddRequest(name, request_callback, synopsis, description, crash_on_error);
			first_name = name;
		}
		else
			success = success && AddRequest(name, request_callback, "Alias of " + first_name, "", crash_on_error);
		
		++i;
	}
	
	return success;
}

bool SimpleAgent::AddRequest(std::initializer_list<std::string> request_names, NonArgumentedRequest request_callback, std::string synopsis, std::string description, bool crash_on_error) {
	// Add aliases for the request
	bool success = true;
	
	// Add the requests
	// Agh why doesn't std::initializer_list have a subscript operator??
	int i = 0;
	std::string first_name;
	for (const std::string &name : request_names) {
		// After the first request, set the synopsis as 'Alias of ...'
		if ( i == 0 ) {
			success = success && AddRequest(name, request_callback, synopsis, description, crash_on_error);
			first_name = name;
		}
		else
			success = success && AddRequest(name, request_callback, "Alias of " + first_name, "", crash_on_error);
		
		++i;
	}
	
	return success;
}


//===============================================================
//============================ DEBUG ============================
//===============================================================

void SimpleAgent::DebugPrint(bool print_all) const {
	
	// Print all devices
	printf("Devices\n");
	for (auto device_pair : devices) {
		printf("|\t| Device '%s'\n", device_pair.first.c_str());
		device_pair.second->DebugPrint();
	}
	
	// Print all requests
	printf("Requests\n");
	for (auto request_pair : argumented_requests)
		printf("|\t| Request '%s'\n", request_pair.first.c_str());
	for (auto request_pair : non_argumented_requests)
		printf("|\t| Request '%s'\n", request_pair.first.c_str());
	
	// Print all node properties
	printf("Node Properties\n");
	for (auto node_property_pair : node_properties) {
		if ( print_all || node_property_pair.second.post )
			printf("|\t| Property '%s' (aka %s): %s\n",
				   node_property_pair.second.readable_name.c_str(),
				   node_property_pair.second.cosmos_name.c_str(),
				   node_property_pair.second.value_string.c_str());
	}
}

std::string SimpleAgent::GetDebugString(bool print_all) const {
	
	std::stringstream ss;
	
	// Print all devices
	ss << "Devices\n";
	for (auto device_pair : devices) {
		ss << "|\t| Device '" << device_pair.first << "'\n";
		device_pair.second->GetDebugString(ss);
	}
	
	// Print all requests
	ss << "Requests\n";
	for (auto request_pair : argumented_requests) {
		ss << "|\t| Request '" << request_pair.first << "'\n";
	}
	for (auto request_pair : non_argumented_requests) {
		ss << "|\t| Request '" << request_pair.first << "'\n";
	}
	
	// Print all node properties
	ss << "Node Properties\n";
	for (auto node_property_pair : node_properties) {
		if ( print_all || node_property_pair.second.post )
			ss << "|\t| Property '" << node_property_pair.second.readable_name
				  << "' (aka " << node_property_pair.second.cosmos_name
				  << "): " << node_property_pair.second.value_string << "\n";
	}
	
	return ss.str();
}


//===============================================================
//=========================== SUPPORT ===========================
//===============================================================

int32_t cubesat::RequestProxy(char *request, char* response, Agent *agent_) {
	
	// Split the request string into arguments
	std::vector<std::string> arguments;
	istringstream iss(request);
	string arg;
	
	while ( getline(iss, arg, ' ') )
		arguments.push_back(arg);
	
	// Get the request name and remove it from the argument list
	std::string request_name = arguments[0];
	arguments.erase(arguments.begin());
	
	// Get the SimpleAgent version so we can find the proper request callback
	SimpleAgent *agent = SimpleAgent::GetInstance();
	
	ArgumentedRequest argumented_callback;
	NonArgumentedRequest non_argumented_callback;
	std::string response_str;
	
	// Check if an argumented version of the request exists
	if ( (argumented_callback = agent->GetArgumentedRequest(request_name)) != nullptr ) {
		
		response_str = argumented_callback(arguments);
	}
	// Check if a non-argumented version of the request exists
	else if ( (non_argumented_callback = agent->GetNonArgumentedRequest(request_name)) != nullptr ) {
		
		response_str = non_argumented_callback();
	}
	// If this occurs, the request does not exist
	else {
		
		// Indicate an error since the user-defined request doesn't exist
		sprintf(response, "User-defined request '%s' does not exist", request_name.c_str());
		return -1;
	}
	
	// Print the response string to the output field
	sprintf(response, "%s", response_str.c_str());
	
	// Inidicate success if the output is not empty
	return !response_str.empty();
}


std::string cubesat::_Request_DebugPrint(std::vector<std::string> args) {
	// Check if all properties should be listed
	if ( args.size() == 1 ) {
		if ( args[0] == "all" )
			return SimpleAgent::GetInstance()->GetDebugString(true);
	}
	
	return SimpleAgent::GetInstance()->GetDebugString();
}

std::string cubesat::_Request_GetProperty(std::vector<std::string> args) {
	
	// Make sure arguments are supplied
	if ( args.size() == 0 )
		return "";
	
	SimpleAgent *agent = SimpleAgent::GetInstance();
	
	stringstream output;
	output << "{";
	
	// Go through each given device
//	for (const std::string &arg : args) {
		
//		// Get the device:property delimiter
//		unsigned int colon_index = arg.find(":");
		
//		// Make sure the format is correct
//		if ( colon_index == string::npos ) {
//			return "";
//		}
		
//		// Get the device and property names
//		string device_name = arg.substr(0, colon_index);
//		string property_name = arg.substr(colon_index + 1);
		
//		// Make sure the device exists
//		if ( !agent->DeviceExists(device_name) )
//			continue;
		
//		Device *device = agent->GetDevice(device_name);
//		std::string value = device->GetPropertyStringByName(property_name);
		
//		if ( !value.empty() ) {
//			output << "\"" << device_name << "\": \"" << value << "\", ";
//		}
//	}
	
	output << "}";
	
	return SimpleAgent::GetInstance()->GetDebugString();
}


