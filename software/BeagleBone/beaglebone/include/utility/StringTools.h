
#ifndef CUBESAT_STRING_TOOLS
#define CUBESAT_STRING_TOOLS

#include <string>
#include "math/vector.h"
#include "utility/Types.h"


namespace cubesat {
	
	
	
	namespace detail {
		
		
		template <typename T>
		struct ToStringDetail {
			inline static std::string ToString(T value) {
				return std::to_string(value);
			}
		};
		
		template <>
		struct ToStringDetail<char*> {
			inline static std::string ToString(char *value) {
				return value;
			}
		};
		
		template <>
		struct ToStringDetail<bool> {
			inline static std::string ToString(bool value) {
				return value ? "true" : "false";
			}
		};
		
		template <>
		struct ToStringDetail<rvector> {
			inline static std::string ToString(rvector value) {
				return "(" + std::to_string(value.col[0]) + ", " + std::to_string(value.col[1]) + ", " + std::to_string(value.col[2]) + ")";
			}
		};
		
		template<>
		struct ToStringDetail<Vec3> {
			inline static std::string ToString(Vec3 value) {
				return "(" + std::to_string(value.x) + ", " + std::to_string(value.y) + ", " + std::to_string(value.z) + ")";
			}
		};
		
		template <>
		struct ToStringDetail<gvector> {
			inline static std::string ToString(gvector value) {
				return "(" + std::to_string(value.lat) + ", " + std::to_string(value.lon) + ", " + std::to_string(value.h) + ")";
			}
		};
		
		template <>
		struct ToStringDetail<Location> {
			inline static std::string ToString(Location value) {
				return "(" + std::to_string(value.latitude) + ", " + std::to_string(value.longitude) + ", " + std::to_string(value.altitude) + ")";
			}
		};
	}
	
	/**
	 * @brief Converts a value to a string
	 * @tparam T The value type. Add support for a custom type
	 * by specializing the detail::ToStringDetail struct.
	 * @param value The value
	 * @return 
	 */
	template<typename T>
	inline std::string ToString(T value) {
		return detail::ToStringDetail<T>::ToString(value);
	}
	
	inline std::string ToLowercase(std::string input) {
		for (size_t i = 0; i < input.length(); ++i)
			input[i] = tolower(input[i]);
		
		return input;
	}
	inline std::string ToUppercase(std::string input) {
		for (size_t i = 0; i < input.length(); ++i)
			input[i] = toupper(input[i]);
		
		return input;
	}
	inline std::string& ToLowercaseInPlace(std::string &input) {
		for (size_t i = 0; i < input.length(); ++i)
			input[i] = tolower(input[i]);
		
		return input;
	}
	inline std::string& ToUppercaseInPlace(std::string &input) {
		for (size_t i = 0; i < input.length(); ++i)
			input[i] = toupper(input[i]);
		
		return input;
	}
	inline bool CompareAndIgnoreCase(const std::string &first, const std::string &second) {
		// First compare their lengths
		if ( first.length() != second.length() )
			return false;
		
		// Check each character and ignore case
		for (size_t i = 0; i < first.length(); ++i) {
			if ( tolower(first[i]) != tolower(second[i]) )
				return false;
		}
		
		// Yup, they're the same
		return true;
	}
	
	
	
}

#endif
