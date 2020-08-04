
from artemis.ADT7311 import ADT7311
import time

duration = 10

sensor = ADT7311()

print('Testing temperature sensor for ' + str(duration) + ' seconds')

for i in range(duration):
	sensor.update()
	
	print('Temperature: ' + str(sensor.temp) + ' C')
	
	time.sleep(1)

