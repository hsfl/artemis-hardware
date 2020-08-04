import struct
import time

from pycubed import cubesat

import time
import board
import neopixel

pixel = neopixel.NeoPixel(board.NEOPIXEL, 1, brightness=0.5, auto_write=False)

def _wheel(pos):
	# Input a value 0 to 255 to get a color value.
	# The colours are a transition r - g - b - back to r.
	if pos < 0 or pos > 255:
		r = g = b = 0
	elif pos < 85:
		r = int(pos * 3)
		g = int(255 - pos*3)
		b = 0
	elif pos < 170:
		pos -= 85
		r = int(255 - pos*3)
		g = 0
		b = int(pos*3)
	else:
		pos -= 170
		r = 0
		g = int(pos*3)
		b = int(255 - pos*3)
	return (r, g, b)


def _rainbow_cycle(wait):
	for j in range(255):
		pixel_index = (256 // 1) + j
		pixel[0] = _wheel(pixel_index & 255)
		pixel.show()
		time.sleep(wait)

def TestWheel():
	print('Cycling LED color')
	
	for i in range(256):
		_rainbow_cycle(0.01) # change value to adjust speed
		
	print('Test complete')
	
def TestBrightness():
	print('Testing LED brightness')
	
	steps = 100
	duration = 5
	for i in range(steps):
		pixel.brightness = i / steps
		pixel.show()
		time.sleep(duration / steps)
		
	print('Test complete')
	
	
