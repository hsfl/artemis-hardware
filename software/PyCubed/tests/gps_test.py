import time

from artemis import gps


def Test(duration_sec):
	print('Testing GPS')
	
	for i in range(duration_sec):
		
		# Check if the GPS has a fix
		if not gps.HasFix():
			print('Waiting for fix')
			continue
		
		# Print GPS data
		print('=' * 40)  # Print a separator line.
		print('Fix Quality: {0:.6f}'.format(gps.fix_quality))
		print('Latitude: {0:.6f} degrees'.format(gps.latitude))
		print('Longitude: {0:.6f} degrees'.format(gps.longitude))
		print('Altitude: {0:.6f} m'.format(gps.altitude))
		print('Speed: {0:.6f} m/s'.format(gps.speed))
		print('Azimuth: {0:.6f} degrees'.format(gps.azimuth))
		
		# Sleep for a bit
		time.sleep(1)
	
	
	print('=' * 40)
	print('Test finished')
