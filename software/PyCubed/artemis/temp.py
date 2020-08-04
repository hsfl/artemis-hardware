from pycubed import cubesat
from ADT7311 import ADT7311

batt_sensor = ADT7311()


def update():
	batt_sensor.update()
	pass


def get_mainboard_temp():
	return cubesat.temp


def get_batt_temp():
	return batt_sensor.temp
