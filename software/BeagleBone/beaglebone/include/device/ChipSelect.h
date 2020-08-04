
#ifndef CUBESAT_DEVICE_CHIP_SELECT
#define CUBESAT_DEVICE_CHIP_SELECT

#include <stdint.h>
#include <vector>
#include <string>

#include "device/GPIO.h"

#define SPI_CS0_PIN_KEY "P9_14"
#define SPI_CS1_PIN_KEY "P9_14"
#define SPI_CS2_PIN_KEY "P9_14"
#define SPI_CS3_PIN_KEY "P9_14"
#define SPI_CS_PIN_COUNT 4

namespace cubesat {
	
	
	class ChipSelect {
	public:
		/**
		 * @brief Creates a ChipSelect object
		 * @param cs_pin_keys The pin keys, stored in big endian order
		 */
		ChipSelect(const std::vector<std::string> &cs_pin_keys) : cs_pin_keys(cs_pin_keys) {
			cs_gpios.reserve(cs_pin_keys.size());
			
			// Create the GPIO objects
			for (const std::string &cs_pin_key : cs_pin_keys) {
				GPIO gpio(cs_pin_key.c_str());
				gpio.SetMode(GPIOMode::Output);
				cs_gpios.push_back(gpio);
			}
		}
		
		
		/**
		 * @brief Selects a chip at the given address
		 * @param address The address (big endian)
		 */
		void Acquire(unsigned int address) {
			
			for (size_t i = 0; i < cs_gpios.size(); ++i) {
				
				// Get bit 'i' of the address
				bool en = ((address >> i) & 0b1) == 1;
				
				// Enable or disable the GPIO depending on whether the bit is set
				cs_gpios[i].DigitalWrite(en ? GPIOValue::High : GPIOValue::Low);
			}
		}
		
		
	private:
		
		//! The BeagleBone GPIO pin keys (e.g. P9_14)
		std::vector<std::string> cs_pin_keys;
		//! The BeagleBone GPIOs
		std::vector<GPIO> cs_gpios;
	};
	

}

#endif
