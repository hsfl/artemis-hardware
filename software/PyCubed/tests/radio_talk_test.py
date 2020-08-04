import time

from pycubed import cubesat

duration = 25

# Check if the radios were found
if not cubesat.hardware['Radio1']:
	print('Radio 1 not found')
	if not cubesat.hardware['Radio1']:
		print('Radio 2 not found')
	
	exit(1)
	

print('Testing Radio')
print('(Make sure radio_listen_test.py is running on another PyCubed)')

# Test TX
print('=' * 40)
for i in range(duration):
	# Send a bunch of dummy info
	print('Sending packet of 8 bytes...')
	cubesat.radio1.send(bytes([0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07]))
	
	# Wait for a second
	time.sleep(1)

print('=' * 40)
print('Test finished')

