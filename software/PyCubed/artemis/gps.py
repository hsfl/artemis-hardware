import struct
from pycubed import cubesat, adafruit_gps

# SEE https://www.notion.so/GPS-142436b3a4904f2c85024d28902a75f0

class GPS:
	
	def __init__(self):
		self.gps = adafruit_gps.GPS(cubesat.uart, debug=False)
		
		self.utc = 0
		self.has_fix = False
		self.latitude = 0,
		self.longitude = 0
		self.fix_quality = 0
		self.satellites = 0
		self.altitude = 0
		self.speed = 0
		self.azimuth = 0
		self.horizontal_dilution = 0

	def update(self):
		# Update the GPS
		self.gps.update()
		
		# Make sure the GPS has a fix
		if not self.gps.has_fix:
			return
		
		self.utc = 0  # TODO
		self.latitude = self.gps.latitude
		self.longitude = self.gps.longitude
		self.fix_quality = self.gps.fix_quality
		self.satellites = self.gps.satellites
		self.altitude = self.gps.altitude_m
		self.speed = self.gps.speed_knots  # Speed in knots
		self.azimuth = 0  # TODO
		self.horizontal_dilution = self.gps.horizontal_dilution
	

gps = GPS()
