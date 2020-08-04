
#ifndef CUBESAT_DEVICE_SUNSENSORS
#define CUBESAT_DEVICE_SUNSENSORS

#include <string>

#define SUNSENSOR_COUNT 6

#define SUNSENSOR_PLUSX_ID 0
#define SUNSENSOR_MINUSX_ID 1
#define SUNSENSOR_PLUSY_ID 2
#define SUNSENSOR_MINUSY_ID 3
#define SUNSENSOR_PLUSZ_ID 4
#define SUNSENSOR_MINUSZ_ID 5

#define SUNSENSOR_PLUSX_NAME "ss_plusx"
#define SUNSENSOR_MINUSX_NAME "ss_minusx"
#define SUNSENSOR_PLUSY_NAME "ss_plusy"
#define SUNSENSOR_MINUSY_NAME "ss_minusy"
#define SUNSENSOR_PLUSZ_NAME "ss_plusz"
#define SUNSENSOR_MINUSZ_NAME "ss_minusz"


namespace cubesat {
	
	
	
	/**
	 * @brief Returns a list of sun sensor names, ordered by sensor ID
	 * @return 
	 */
	inline const std::string* GetSunSensorNames() {
		static std::string sensor_names[SUNSENSOR_COUNT];
		static bool populated = false;
		
		if ( !populated ) {
			sensor_names[SUNSENSOR_PLUSX_ID]  = SUNSENSOR_PLUSX_NAME;
			sensor_names[SUNSENSOR_MINUSX_ID] = SUNSENSOR_MINUSX_NAME;
			sensor_names[SUNSENSOR_PLUSY_ID]  = SUNSENSOR_PLUSY_NAME;
			sensor_names[SUNSENSOR_MINUSY_ID] = SUNSENSOR_MINUSY_NAME;
			sensor_names[SUNSENSOR_PLUSZ_ID]  = SUNSENSOR_PLUSZ_NAME;
			sensor_names[SUNSENSOR_MINUSZ_ID] = SUNSENSOR_MINUSZ_NAME;
			
			populated = true;
		}
		
		return sensor_names;
	}
	
	/**
	 * @brief Helper function. Converts sun sensor ID to its string name
	 * @param sunsensor_id The sun sensor ID
	 * @return The name, or an empty string if the ID was invalid.
	 */
	inline const std::string& GetSunSensorName(int sunsensor_id) {
		if ( sunsensor_id < 0 || sunsensor_id >= SUNSENSOR_COUNT )
			return "";
		
		return GetSunSensorNames()[sunsensor_id];
	}
	
	/**
	 * @brief Helper function. Converts sun sensor name to its ID
	 * @param sunsensor_name The sun sensor name
	 * @return The name, or an empty string if the ID was invalid.
	 */
	inline int GetSunSensorID(const std::string &sunsensor_name) {
		const std::string* sensor_names = GetSunSensorNames();
		
		for (int i = 0; i < SUNSENSOR_COUNT; ++i) {
			if ( sensor_names[i] == sunsensor_name )
				return i;
		}
		
		return -1;
	}
	
	
	
}


#endif
