

from . import beaglebone, gps, power, switch, radio
from pycubed import cubesat as pycubed_cubesat


class CubeSat:
	
	def __init__(self):
		self.beaglebone = beaglebone.BeagleBone()
		self.gps = gps.gps
		self.power = power.power
		self.switch = switch.switch
		self.radio = radio.radio
	
	def update(self):
		self.beaglebone.update()
		self.gps.update()


cubesat = CubeSat()
