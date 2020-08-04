
#include <iostream>
#include <fstream>
#include  <iomanip>
#include "device/temp_sensors.h"
#include "support/configCosmos.h"
#include "device/OPT3001.h"

 
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
		printf("I2C bus number must be either 0, 1, or 2\n");
		return;
	}
	// Check if device address is valid
	else if ( addr < 0 || addr > 0xFF ) {
		printf("Device address must range from 0 to 0xFF\n");
		return;
	}
	
	printf("Connecting to OPT3001 on bus %d at address %#04x.\n", bus, addr);
	
	// Create the sensor object
	OPT3001 sensor(bus, addr);
	
	printf("Reading sensor state\n");
	sensor.ReadState();
	
	// Print the result register
	printf("========== Result Register (addr 0x00) ==========\n");
	OPT3001::ResultData result = sensor.GetResultRegister();
	printf("(value = %f lx)\n", sensor.GetLux());
	printf("Fraction: %d (", result.result); PrintBinary(result.result, 12); printf(")\n");
	printf("Exponent: %d (", result.exponent); PrintBinary(result.exponent, 4); printf(")\n");
	printf("========== Configuration Register(addr 0x01) ==========\n");
	OPT3001::Configuration config = sensor.GetConfiguration();
	printf("Fault Count:        %d (", config.FaultCount); PrintBinary(config.FaultCount, 2); printf(")\n");
	printf("Mask Exponent:      %d (", config.MaskExponent); PrintBinary(config.MaskExponent, 1); printf(")\n");
	printf("Polarity:           %d (", config.Polarity); PrintBinary(config.Polarity, 1); printf(")\n");
	printf("Latch:              %d (", config.Latch); PrintBinary(config.Latch, 1); printf(")\n");
	printf("Flag Low:           %d (", config.FlagLow); PrintBinary(config.FlagLow, 1); printf(")\n");
	printf("Flag High:          %d (", config.FlagHigh); PrintBinary(config.FlagHigh, 1); printf(")\n");
	printf("Conversion Ready:   %d (", config.ConversionReady); PrintBinary(config.ConversionReady, 1); printf(")\n");
	printf("Overflow Flag:      %d (", config.OverflowFlag); PrintBinary(config.OverflowFlag, 1); printf(")\n");
	printf("Mode of Conversion: %d (", config.ModeOfConversionOperation); PrintBinary(config.ModeOfConversionOperation, 2); printf(")\n");
	printf("Conversion Time:    %d (", config.ConversionTime); PrintBinary(config.ConversionTime, 1); printf(")\n");
	printf("Range Number:       %d (", config.RangeNumber); PrintBinary(config.RangeNumber, 4); printf(")\n");
	printf("========== Low Limit Register (addr 0x02) ==========\n");
	result = sensor.GetLowLimitRegister();
	printf("(value = %f lx)\n", sensor.GetLux());
	printf("Fraction: %d (", result.result); PrintBinary(result.result, 12); printf(")\n");
	printf("Exponent: %d (", result.exponent); PrintBinary(result.exponent, 4); printf(")\n");
	printf("========== High Limit Register (addr 0x03) ==========\n");
	result = sensor.GetHighLimitRegister();
	printf("(value = %f lx)\n", sensor.GetLux());
	printf("Fraction: %d (", result.result); PrintBinary(result.result, 12); printf(")\n");
	printf("Exponent: %d (", result.exponent); PrintBinary(result.exponent, 4); printf(")\n");
	printf("========== Manufacturer ID Register (addr 0x7E) ==========\n");
	uint16_t id = sensor.GetManufacturerID();
	printf("Manufacturer ID: %d (", id); PrintBinary(id, 16); printf(")\n");
	printf("========== Device ID Register (addr 0x7F) ==========\n");
	id = sensor.GetDeviceID();
	printf("Device ID: %d (", id); PrintBinary(id, 16); printf(")\n");
	printf("===========================================\n\n");
}


int main(int argc, char ** argv) {
	
	switch ( argc ) {
		case 3:
			TestSensor(atoi(argv[1]), (int)strtol(argv[2], NULL, 0));
			break;
		default:
			printf("Usage: sun_dump i2c_bus dev_addr\n");
			printf("Ex: sun_dump 1 0x68\n");
			break;
	}
	
	
	return 0;
}

