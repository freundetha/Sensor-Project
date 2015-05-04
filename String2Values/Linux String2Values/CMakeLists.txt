cmake_minimum_required(VERSION 2.8.3 FATAL_ERROR)

project(LINKSSensorNode)
set(CMAKE_CXX_FLAGS "-std=c++11 ${CMAKE_CXX_FLAGS}")
add_executable (sensorNode main.cpp LINKSSensorNode.cpp serialib.cpp)


