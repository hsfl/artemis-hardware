import struct
import time

from pycubed import cubesat

# Check if the radios were found
if not cubesat.hardware['Radio1']:
	print('Radio 1 not found')
	if not cubesat.hardware['Radio1']:
		print('Radio 2 not found')
		
	exit(1)


duration = 25

print('Testing Radio')
print('(Make sure radio_talk_test.py is running on another PyCubed)')


print('=' * 40)
for i in range(duration):
	# Try to receive a packet
	print('Receiving packet...')
	packet = cubesat.radio1.receive()
	
	# Print the packet data, if received
	if packet is None:
		print('No packet received')
	else:
		print('Received raw bytes: {0}'.format(packet))
	
	# Wait for a second
	time.sleep(1)


print('=' * 40)
print('Test finished')


