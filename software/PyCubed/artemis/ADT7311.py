
import board
import busio
import digitalio


class TemperatureRegister:
	
	def __init(self):
		self.low_flag = 0
		self.high_flag = 0
		self.crit_flag = 0
		self.temperature = 0
		self.sign = 0
		
class StatusRegister:
	
	def __init__(self):
		self.low_flag = 0
		self.high_flag = 0
		self.crit_flag = 0
		self.ready = 0
		
class ManufacturerRegister:
	
	def __init__(self):
		self.revision_id = 0
		self.manufacturer_id = 0
		
class ConfigurationRegister:
	
	def __init__(self):
		self.fault_queue = 0
		self.ct_pin_polarity = 0
		self.int_pin_polarity = 0
		self.int_ct_mode = 0
		self.operation_mode = 0
		self.resolution = 0


class ADT7311:
	
	STATUS_REGISTER = 0x00
	CONFIGURATION_REGISTER = 0x01
	TEMPERATURE_REGISTER = 0x02
	MANUFACTURER_REGISTER = 0x03
	CRIT_SETPOINT_REGISTER = 0x04
	HYST_SETPOINT_REGISTER = 0x05
	HIGH_SETPOINTER_REGISTER = 0x06
	LOW_SETPOINTER_REGISTER = 0x07
	
	def __init__(self):
		# Setup the SPI connection
		self.cs = digitalio.DigitalInOut(board.xSDCS)
		self.spi = busio.SPI(board.SCK, MOSI=board.MOSI, MISO=board.MISO)
		self.frequency = 5000000
		self.phase = 0
		self.polarity = 0
		self.cs.direction = digitalio.Direction.OUTPUT
		self.cs.value = True
		
		self.config_register = ConfigurationRegister()
		self.temp_register = TemperatureRegister()
		self.manufacturer_register = ManufacturerRegister()
		self.status_register = StatusRegister()
		self.low_setpoint_register = 0
		self.high_setpoint_register = 0
		self.crit_setpoint_register = 0
		self.hyst_setpoint_register = 0
	
	@property
	def temp(self):
		if self.temp_register.sign == 0: # Handle negative values
			return (self.temp_register.temperature - 65536) / 128.0
		else:
			return self.temp_register.temperature / 128.0
			
	
	def __lock(self):
		# Wait until a lock is acquired
		while not self.spi.try_lock():
			pass
	
	def __unlock(self):
		self.spi.unlock()
		
	def __open(self):
		self.__lock()
		
		try:
			self.spi.configure(baudrate=self.frequency, phase=self.phase, polarity=self.polarity)
			self.cs.value = False
			return True
		except:
			self.spi.unlock()
			return False
	
	def __close(self):
		self.cs.value = True
		self.__unlock()
	
	def update(self):
		
		if not self.__open():
			return False
		
		# Read the configuration register
		value = self.__read_register8(self.CONFIGURATION_REGISTER)
		self.config_register.fault_queue = value >> 6
		self.config_register.ct_pin_polarity = (value >> 5) & 0b1
		self.config_register.int_pin_polarity = (value >> 4) & 0b1
		self.config_register.int_ct_mode = (value >> 3) & 0b1
		self.config_register.operation_mode = (value >> 1) & 0b11
		self.config_register.resolution = value & 0b1
		
		# Read the temperature data
		value = self.__read_register16(self.TEMPERATURE_REGISTER)
		self.temp_register.low_flag = value >> 15
		self.temp_register.high_flag = (value >> 14) & 0b1
		self.temp_register.crit_flag = (value >> 13) & 0b1
		self.temp_register.temperature = (value >> 1) & 0b111111111111
		self.temp_register.sign = value & 0b1
		
		# Read the status register
		value = self.__read_register8(self.STATUS_REGISTER)
		self.status_register.low_flag = (value >> 3) & 0b1
		self.status_register.high_flag = (value >> 2) & 0b1
		self.status_register.crit_flag = (value >> 1) & 0b1
		self.status_register.ready = value & 0b1
		
		# Read the manufacturer register
		value = self.__read_register8(self.MANUFACTURER_REGISTER)
		self.manufacturer_register.revision_id = (value >> 5) & 0b111
		self.manufacturer_register.manufacturer_id = value & 0b11111
		
		# Read the setpoint registers
		self.low_setpoint_register = self.__read_register16(self.LOW_SETPOINTER_REGISTER)
		self.high_setpoint_register = self.__read_register16(self.HIGH_SETPOINTER_REGISTER)
		self.crit_setpoint_register = self.__read_register16(self.CRIT_SETPOINT_REGISTER)
		self.hyst_setpoint_register = self.__read_register16(self.HYST_SETPOINT_REGISTER)
		
		self.__close()
		
		return True
	
	def configure(self, config):
		if not self.__open():
			return False
		
		try:
			value = config.fault_queue
			value = (value << 2) | config.ct_pin_polarity
			value = (value << 1) | config.int_pin_polarity
			value = (value << 1) | config.int_ct_mode
			value = (value << 2) | config.operation_mode
			value = (value << 1) | config.resolution
			
			self.__write_register8(self.CONFIGURATION_REGISTER, value)
		finally:
			pass
		
		self.__close()
		
	def __write_register8(self, register_addr, value):
		
		# Create the command and register value
		command = 0b01000000 | ((register_addr & 0b111) << 3)
		command = (command << 8) | (value & 0b11111111)
		
		# Write the command
		self.spi.write(bytearray([command]))
	
	def __write_register16(self, register_addr, value):
		
		# Create the command and register value
		command = 0b01000000 | ((register_addr & 0b111) << 3)
		command = (command << 8) | (value & 0b1111111111111111)
		
		# Write the command
		self.spi.write(bytearray([command]))
	
	def __read_register8(self, register_addr):
		"""Reads an 8-bit register with the given address"""
		
		# Create a read command
		command = 0b01000000 | ((register_addr & 0b111) << 3)
		self.spi.write(bytearray([command]))
		
		# Read the result
		result = bytearray(1)
		self.spi.readinto(result)
		
		# Return the result
		return result[0]
	
	def __read_register16(self, register_addr):
		"""Reads a 16-bit register with the given address"""
		# Create a read command
		command = 0b01000000 | ((register_addr & 0b111) << 3)
		self.spi.write(bytearray([command]))
		
		# Read the result
		result = bytearray(2)
		self.spi.readinto(result)
		
		# Return the result
		return (result[0] << 8) | result[1]
