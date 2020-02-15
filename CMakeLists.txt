cmake_minimum_required(VERSION 3.2)
set (CMAKE_INSTALL_PREFIX "/home/chouer/workspace/vrep/coppeliasim"  CACHE PATH "Index Prefix." FORCE)
project(vrepSimExt)

# project var
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(BUILD_SHARED_LIBS ON)

set(PROJECT_INCLUDE_DIR ${CMAKE_SOURCE_DIR}/include)
#set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/lib)
#set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/bin)


include(cmake/FindCoppeliaSim.cmake)
include(cmake/FindBlueZero.cmake)
include(cmake/FindB0RemoteApi.cmake)

# Boost
set(Boost_USE_STATIC_LIBS        ON) # only find static libs
set(Boost_USE_MULTITHREADED      ON)
set(Boost_USE_STATIC_RUNTIME    OFF)
find_package(Boost COMPONENTS date_time filesystem system ...)
if(Boost_FOUND)
  include_directories(${Boost_INCLUDE_DIRS})
endif()

include_directories(${PROJECT_INCLUDE_DIR})
include_directories(${COPPELIASIM_LIB_DIR}/simMath)

add_subdirectory(plugins)
add_subdirectory(clients)
