
#include <iostream>
#include <fstream>
#include  <iomanip>
#include "device/mpu9250.h"

#include "thirdparty/c-periphery/serial.h"

 
using namespace std;
using namespace cubesat;


void test_IMU() {
	// Open the MPU 9250 device at address 0x68
    MPU9250 *imu = new MPU9250(0x68, 2);
	
	uint8_t buff[256];
	imu->GetValuesFromRegisters(buff, 0x00, 0xff);
	
	
	for	(int i = 0; i < 16; ++i) {
		cout << " " << hex << i << " ";
	}
	
	cout << endl;
	
	for (int i = 0; i <= 0xff; i++) {
		printf("%2x ", buff[i]);
		
		if ( (i + 1) % 16 == 0 ) {
			printf("\n");
		}
	}
	
	for (int i = 0; i < 100; ++i) {
		uint8_t x_accel_h = imu->GetValueFromRegister(0x3b);
		uint8_t x_accel_l = imu->GetValueFromRegister(0x3c);
		uint16_t x_accel = (x_accel_h << 8) | x_accel_l;
		
		printf("X-accel reading: %d\n", x_accel);
		
		
		usleep(100000);
	}
	
	delete imu;
}

//void test_GPS(std::string device) {
//	serial_t *serial;
//	uint8_t s[] = "Hello World!";
//	uint8_t buf[128];
//	int ret;

//	serial = serial_new();

//	/* Open /dev/ttyUSB0 with baudrate 115200, and defaults of 8N1, no flow control */
//	if (serial_open(serial, device.c_str(), 115200) < 0) {
//		fprintf(stderr, "serial_open(): %s\n", serial_errmsg(serial));
//		exit(1);
//	}

//	/* Write to the serial port */
////	if (serial_write(serial, s, sizeof(s)) < 0) {
////		fprintf(stderr, "serial_write(): %s\n", serial_errmsg(serial));
////		exit(1);
////	}

//	/* Read up to buf size or 2000ms timeout */
//	if ((ret = serial_read(serial, buf, sizeof(buf), 2000)) < 0) {
//		fprintf(stderr, "serial_read(): %s\n", serial_errmsg(serial));
//		exit(1);
//	}

//	printf("read %d bytes: _%s_\n", ret, buf);

//	serial_close(serial);

//	serial_free(serial);
//}


int main() {
	
	//test_IMU();
	//test_GPS("/dev/ttyO0");
	
	
	
    return 0;
}

