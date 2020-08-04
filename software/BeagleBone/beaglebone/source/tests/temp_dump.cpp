
#include <iostream>
#include <fstream>
#include  <iomanip>
#include "device/temp_sensors.h"
#include "support/configCosmos.h"
#include "device/ADT7311.h"

 
using namespace std;
using namespace cubesat;

void PrintBinary(int n, int bits) {
	printf("0b");
	for (unsigned i = 1 << bits; i > 0; i = i / 2) 
		(n & i)? printf("1"): printf("0");
}


void TestSensor(int bus, int addr) {
	// Check if bus is valid
	if ( bus < 0 || bus > 2 ) {
		printf("SPI bus number must be either 0 or 1\n");
		return;
	}
	// Check if device address is valid
	else if ( addr < 0 || addr > 0xFF ) {
		printf("Device address must range from 0 to 0xFF\n");
		return;
	}
	
	printf("Connecting to ADT7311 on bus %d at address %#04x.\n", bus, addr);
	
	// Create the sensor object
	ADT7311 sensor(bus, addr);
	
	printf("Reading sensor state\n");
	sensor.ReadState();
	
	// Print the result register
	printf("========== Status Register (addr 0x00) ==========\n");
	ADT7311::StatusData status = sensor.GetStatusRegister();
	printf("<Unused>:  %d (", status._unused); PrintBinary(status._unused, 4); printf(")\n");
	printf("Low Flag:  %d (", status.low_flag); PrintBinary(status.low_flag, 1); printf(")\n");
	printf("High Flag: %d (", status.high_flag); PrintBinary(status.high_flag, 1); printf(")\n");
	printf("Crit Flag: %d (", status.crit_flag); PrintBinary(status.crit_flag, 1); printf(")\n");
	printf("Rdy:       %d (", status.rdy); PrintBinary(status.rdy, 1); printf(")\n");
	printf("========== Configuration Register(addr 0x01) ==========\n");
	ADT7311::Configuration config = sensor.GetConfiguration();
	printf("Fault Queue:      %d (", config.fault_queue); PrintBinary(config.fault_queue, 2); printf(")\n");
	printf("CT Pin Polarity:  %d (", config.ct_pin_polarity); PrintBinary(config.ct_pin_polarity, 1); printf(")\n");
	printf("INT Pin Polarity: %d (", config.int_pin_polarity); PrintBinary(config.int_pin_polarity, 1); printf(")\n");
	printf("INT/CT Mode:      %d (", config.int_ct_mode); PrintBinary(config.int_ct_mode, 1); printf(")\n");
	printf("Operation Mode:   %d (", config.operation_mode); PrintBinary(config.operation_mode, 2); printf(")\n");
	printf("Resolution:       %d (", config.resolution); PrintBinary(config.resolution, 1); printf(")\n");
	printf("========== Temperature Register (addr 0x02) ==========\n");
	ADT7311::TemperatureData result = sensor.GetTemperatureRegister();
	printf("(value = %f C)\n", sensor.GetTemperature());
	printf("Low Flag:    %d (", result.low_flag); PrintBinary(result.low_flag, 1); printf(")\n");
	printf("High Flag:   %d (", result.high_flag); PrintBinary(result.high_flag, 1); printf(")\n");
	printf("Crit Flag:   %d (", result.crit_flag); PrintBinary(result.crit_flag, 1); printf(")\n");
	printf("Temperature: %d (", result.temperature); PrintBinary(result.temperature, 12); printf(")\n");
	printf("Sign:        %d (", result.sign); PrintBinary(result.sign, 1); printf(")\n");
	printf("========== ManufacturerID Register (addr 0x03) ==========\n");
	ADT7311::ManufacturerData mfr = sensor.GetManufacturerRegister();
	printf("Revision ID:     %d (", mfr.revision_id); PrintBinary(mfr.revision_id, 3); printf(")\n");
	printf("Manufacturer ID: %d (", mfr.manufacturer_id); PrintBinary(mfr.manufacturer_id, 5); printf(")\n");
	printf("========== Crit Setpoint Register (addr 0x04) ==========\n");
	uint16_t reg16 = sensor.GetCritSetpointRegister();
	printf("value = %d C\n", sensor.GetCritSetpoint());
	printf("Crit Setpoint: %d (", reg16); PrintBinary(reg16, 16); printf(")\n");
	printf("========== Hyst Setpoint Register (addr 0x05) ==========\n");
	uint8_t reg8 = sensor.GetHystSetpointRegister();
	printf("value = %d C\n", sensor.GetHystSetpoint());
	printf("Hyst Setpoint: %d (", reg8); PrintBinary(reg8, 8); printf(")\n");
	printf("========== High Setpoint Register (addr 0x06) ==========\n");
	reg16 = sensor.GetHighSetpointRegister();
	printf("value = %d C\n", sensor.GetHighSetpoint());
	printf("High Setpoint: %d (", reg16); PrintBinary(reg16, 16); printf(")\n");
	printf("========== Low Setpoint Register (addr 0x07) ==========\n");
	reg16 = sensor.GetLowSetpointRegister();
	printf("value = %d C\n", sensor.GetLowSetpoint());
	printf("Low Setpoint: %d (", reg16); PrintBinary(reg16, 16); printf(")\n");
	printf("===========================================\n\n");
}


int main(int argc, char ** argv) {
	
	switch ( argc ) {
		case 3:
			TestSensor(atoi(argv[1]), (int)strtol(argv[2], NULL, 0));
			break;
		default:
			printf("Usage: temp_dump spi_bus dev_addr\n");
			printf("Ex: temp_dump 1 0x68\n");
			break;
	}
	
	
	return 0;
}

