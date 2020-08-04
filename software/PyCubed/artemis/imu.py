import struct
from pycubed import cubesat


def GetTemp():
	return cubesat.temp # celsius

def GetAccel():
	return cubesat.acceleration # m/s^2

def GetMag():
	return cubesat.magnetic # gauss

def GetOmega():
	return cubesat.gyro # degrees/s




