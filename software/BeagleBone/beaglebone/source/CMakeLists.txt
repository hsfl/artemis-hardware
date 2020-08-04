cmake_minimum_required(VERSION 2.8)
project(beaglebone)

#aux_source_directory(. SRC_LIST)
#add_executable(${PROJECT_NAME} ${SRC_LIST})


set( CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin )

# point to cosmos/source folder
set(COSMOS_SOURCE   "../../../")
set(USE_COSMOS_FROM "SOURCE")



set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -pedantic -std=c++11 -Wno-invalid-offsetof")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread")

# -----------------------------------------------
# To use COSMOS from the source folder
#include(${CMAKE_SOURCE_DIR}/use_cosmos_from_source.cmake)
include(${COSMOS_SOURCE}/core/cmake/use_cosmos_from_source.cmake)

#add_executable(agent_cpu "${COSMOS_SOURCE}/core/programs/agents/agent_cpu.cpp")
#target_link_libraries(agent_cpu
#    CosmosSupport
#    CosmosAgent
#    CosmosDeviceGeneral
#    CosmosDeviceCpu
#    CosmosDeviceDisk
#    CosmosMath
#    )

set(COSMOS_LIBS
    CosmosSupport
    CosmosAgent
    CosmosDeviceGeneral
    CosmosDeviceI2C
    CosmosDeviceSerial
    CosmosDeviceCpu
    CosmosDeviceDisk
    CosmosMath
    )




# -----------------------------------------------
# Windows specific
if(${CMAKE_SYSTEM_NAME} MATCHES "Windows")
    set(COSMOS_LIBS ${COSMOS_LIBS} ws2_32)
endif()




include_directories("../include")


set(CUBESAT_DEVICE_SRC	device/I2CDevice.cpp
						device/SPIDevice.cpp
						device/UARTDevice.cpp
						device/OPT3001.cpp
						device/ADT7311.cpp
						device/PyCubed.cpp
						device/switch.cpp
						device/GPIO.cpp
						utility/SimpleAgent.cpp
						utility/Device.cpp)
add_library(CubesatDevices STATIC ${CUBESAT_DEVICE_SRC})
target_link_libraries(CubesatDevices ${COSMOS_LIBS})

set(CUBESAT_LIBS CubesatDevices)



# ============================== Agents ==============================

# TCS Agents
add_executable(agent_temp agents/agent_temp.cpp)
add_executable(agent_heater agents/agent_heater.cpp)
target_link_libraries(agent_temp ${COSMOS_LIBS} ${CUBESAT_LIBS})
target_link_libraries(agent_heater ${COSMOS_LIBS} ${CUBESAT_LIBS})


# EPS Agents
add_executable(agent_switch agents/agent_switch.cpp)
target_link_libraries(agent_switch ${COSMOS_LIBS} ${CUBESAT_LIBS})

# ADCS Agents
add_executable(agent_sun agents/agent_sun.cpp)
target_link_libraries(agent_sun ${COSMOS_LIBS} ${CUBESAT_LIBS})

# PyCubed Agent
add_executable(agent_pycubed agents/agent_pycubed.cpp)
target_link_libraries(agent_pycubed ${COSMOS_LIBS} ${CUBESAT_LIBS})

# Payload (Raspberry Pi) Agent
add_executable(agent_raspi agents/agent_raspi.cpp)
target_link_libraries(agent_raspi ${COSMOS_LIBS} ${CUBESAT_LIBS})


# Tests
#add_executable(device_test tests/device_test.cpp device/I2CDevice.cpp)
#target_link_libraries(device_test ${COSMOS_LIBS} ${CUBESAT_LIBS})

add_executable(gpio_test tests/gpio_test.cpp)
target_link_libraries(gpio_test ${COSMOS_LIBS} ${CUBESAT_LIBS})

add_executable(switch_test tests/switch_test.cpp)
target_link_libraries(switch_test ${COSMOS_LIBS} ${CUBESAT_LIBS})

add_executable(temp_test tests/temp_test.cpp)
target_link_libraries(temp_test ${COSMOS_LIBS} ${CUBESAT_LIBS})

add_executable(sun_test tests/sun_test.cpp)
target_link_libraries(sun_test ${COSMOS_LIBS} ${CUBESAT_LIBS})

add_executable(soh1_test tests/soh1_test.cpp)
target_link_libraries(soh1_test ${COSMOS_LIBS} ${CUBESAT_LIBS})

add_executable(soh2_test tests/soh2_test.cpp)
target_link_libraries(soh2_test ${COSMOS_LIBS} ${CUBESAT_LIBS})

add_executable(pycubed_test tests/pycubed_test.cpp)
target_link_libraries(pycubed_test ${COSMOS_LIBS} ${CUBESAT_LIBS})

add_executable(simpleagent_test tests/simpleagent_test.cpp)
target_link_libraries(simpleagent_test ${COSMOS_LIBS} ${CUBESAT_LIBS})


 
 
# ===================================================================

# to deploy on a remote device
file(WRITE "${CMAKE_SOURCE_DIR}/QtCreatorDeployment.txt" "cosmos/bin\n")

macro(add_deployment_file SRC DEST)
    file(RELATIVE_PATH path ${CMAKE_SOURCE_DIR} ${CMAKE_CURRENT_SOURCE_DIR})
    file(APPEND "${CMAKE_SOURCE_DIR}/QtCreatorDeployment.txt" "${path}/${SRC}:${DEST}\n")
endmacro()

macro(add_deployment_directory SRC DEST)
    file(GLOB_RECURSE files RELATIVE "${CMAKE_CURRENT_SOURCE_DIR}" "${SRC}/*")
    foreach(filename ${files})
        get_filename_component(path ${filename} PATH)
        add_deployment_file("${filename}" "${DEST}/${path}")
    endforeach(filename)
endmacro()

set(program_name programs/agents/agent)
file(RELATIVE_PATH relativeDir ${PROJECT_SOURCE_DIR} ${PROJECT_BINARY_DIR}/${program_name})
add_deployment_file(${relativeDir} "bin")

set(program_name "${COSMOS_SOURCE}/source/projects/cubesat-kit/source/tests/device_test")
file(RELATIVE_PATH relativeDir ${PROJECT_SOURCE_DIR} ${PROJECT_BINARY_DIR}/${program_name})
add_deployment_file(${relativeDir} "bin")


