
#include "utility/Device.h"

using namespace std;
using namespace cubesat;

//===============================================================
//============================ OTHER ============================
//===============================================================
const char* cubesat::GetDeviceTypeString(DeviceType type) {
	switch ( type ) {
		case DeviceType::PLOAD: return "payload";
		case DeviceType::SSEN: return "sun sensor";
		case DeviceType::TSEN: return "temperature sensor";
		case DeviceType::MTR: return "magnetic torque rod";
		case DeviceType::ANT: return "antenna";
		case DeviceType::CPU: return "CPU";
		case DeviceType::IMU: return "IMU";
		case DeviceType::GPS: return "GPS";
		case DeviceType::RW: return "reaction wheel";
		case DeviceType::RXR: return "radio receiver";
		case DeviceType::TXR: return "radio transmitter";
		case DeviceType::TCV: return "radio transceiver";
		case DeviceType::MOTR: return "motor";
		case DeviceType::THST: return "thruster";
		case DeviceType::PROP: return "propellant tank";
		case DeviceType::SWCH: return "switch";
		case DeviceType::ROT: return "rotor";
		case DeviceType::STT: return "star tracker";
		case DeviceType::MCC: return "motion capture camera";
		case DeviceType::TCU: return "torque rod control unit";
		case DeviceType::BUS: return "power bus";
		case DeviceType::PSEN: return "pressure sensor";
		case DeviceType::CAM: return "camera";
		case DeviceType::TELEM: return "telemetry";
		case DeviceType::DISK: return "disk drive";
		default: return "invalid";
	}
}

