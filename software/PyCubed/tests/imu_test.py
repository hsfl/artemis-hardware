import time

from pycubed import cubesat

from artemis import imu

print('Testing IMU')

if not cubesat.hardware['IMU']:
	print('No IMU found onboard')
	exit(1)

print('Sensor resolution: ' + str(cubesat.IMU.sensortime))
print('Gyro range: ' + str(cubesat.IMU.gyro_range))
print('Gyro ODR: ' + str(cubesat.IMU.gyro_odr))
print('Gyro power mode: ' + str(cubesat.IMU.gyro_powermode))
print('Accelerometer range: ' + str(cubesat.IMU.accel_range))
print('Accelerometer ODR: ' + str(cubesat.IMU.accel_odr))
print('Accelerometer power mode: ' + str(cubesat.IMU.accel_powermode))


for i in range(10):
	
	# Get readings
	temp = imu.GetTemp()
	accel = imu.GetAccel()
	mag = imu.GetMag()
	omega = imu.GetOmega()
	
	# Print readings
	print('=' * 40)
	print('Temperature: {0: .6f} C'.format(temp))
	print('Acceleration: ({0: .6f}, {1: .6f}, {2: .6f})'.format(accel[0], accel[1], accel[2]))
	print('Magnetic Field: ({0: .6f}, {1: .6f}, {2: .6f})'.format(mag[0], mag[1], mag[2]))
	print('Angular Velocity: ({0: .6f}, {1: .6f}, {2: .6f})'.format(omega[0], omega[1], omega[2]))
	
	# Sleep for a bit
	time.sleep(1)

print('=' * 40)
print('Test finished')

