import struct
from pycubed import cubesat


class Power:
	
	def __init__(self):
		pass
	
	@property
	def battery_voltage(self):
		return cubesat.battery_voltage
	
	@property
	def charge_current(self):
		return cubesat.charge_current
	
	@property
	def system_voltage(self):
		return cubesat.system_voltage
	
	@property
	def system_current(self):
		return cubesat.current_draw
	
	@property
	def charge_percent(self):
		return 0  # TODO
	
	
power = Power()
