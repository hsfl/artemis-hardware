# CircuitPython modules

from artemis import cubesat
import time

# ============== Constants ==============
LOW_POWER_ENTER_CHARGE = 0.2
LOW_POWER_EXIT_CHARGE = 0.5

NOMINAL_MODE_WAIT = 0.5
ENTERING_LOW_POWER_MODE_WAIT = 0.5
LOW_POWER_MODE_WAIT = 0.5
EXITING_LOW_POWER_MODE_WAIT = 0.5

BEAGLEBONE_STARTUP_WAIT = 60  # The time to wait for the BeagleBone to boot. If not booted, power off and try again

# ============== Power Mode Handlers ==============


def nominal_mode():
	
	while True:
		cubesat.update()
		
		# Get battery charge
		batt_charge = cubesat.power.charge_percent
		
		# Check if low power mode should be entered
		if batt_charge < LOW_POWER_ENTER_CHARGE:
			# Start entering low power mode
			entering_low_power_mode()
			break
		
		# Wait for a bit
		time.sleep(NOMINAL_MODE_WAIT)


def entering_low_power_mode():
	# Disable PyCubed devices
	cubesat.switch.Disable("imu")
	cubesat.switch.Disable("gps")
	cubesat.switch.Disable("radio")
	
	# Request BeagleBone shutdown
	cubesat.beaglebone.shutdown()
	
	while True:
		# Read messages from the BeagleBone
		cubesat.update()
		
		# Check if the BeagleBone is ready for power loss
		if cubesat.beaglebone.handoff_flag:
			# Turn off BeagleBone
			cubesat.switch.Disable("beaglebone")
			
			break
		
		# Wait for a bit
		time.sleep(ENTERING_LOW_POWER_MODE_WAIT)
	
	# Switch to low power mode
	low_power_mode()


def low_power_mode():
	
	while True:
		# Check battery health
		batt_charge = cubesat.power.charge_percent
		
		# Check if power is sufficient to exit low power mode
		if batt_charge > LOW_POWER_EXIT_CHARGE:
			# Enable PyCubed devices
			cubesat.switch.Enable("imu")
			cubesat.switch.Enable("gps")
			cubesat.switch.Enable("radio")
			cubesat.switch.Enable("beaglebone")
			
			# Start up the BeagleBone
			cubesat.beaglebone.wait_for_startup()
			
			break
		
		# Wait for a bit
		time.sleep(LOW_POWER_MODE_WAIT)
	
	# Switch to nominal mode
	nominal_mode()


# ============== Initialization ==============

# Enable switches
cubesat.switch.Enable("imu")
cubesat.switch.Enable("gps")
cubesat.switch.Enable("radio")
cubesat.switch.Enable("beaglebone")

# ============== Main Loop ==============

# Make sure the BeagleBone has power before continuing
cubesat.beaglebone.wait_for_startup()

# Start off in nominal mode
nominal_mode()
