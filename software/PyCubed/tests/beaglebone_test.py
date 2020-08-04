import time

from artemis import beaglebone, gps

# We assume the BeagleBone is already powered
bbb = beaglebone.BeagleBone()

while True:
	
	# Update the beaglebone
	bbb.update()
	
	# Check received signals
	if bbb.kill_radio_flag:
		bbb.kill_radio_flag = False
		print('Received kill radio signal')
	
	if bbb.handoff_flag:
		bbb.handoff_flag = False
		print('Received handoff signal')
	
	if bbb.startup_flag:
		bbb.startup_flag = False
		print('Received startup signal')
		
	# Update sensors
	gps.Update()
	
	# Send sensor data
	print('Sending sensor data')
	bbb.send_imu_data()
	bbb.send_gps_data()
	bbb.send_temp_data()
	bbb.send_power_data()
	
	# Wait for a bit
	time.sleep(1)






