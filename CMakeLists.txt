cmake_minimum_required(VERSION 3.2)
project(vrepSimExt)

include(cmake/FindCoppeliaSim.cmake)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(BUILD_SHARED_LIBS ON)

# Boost
set(Boost_USE_STATIC_LIBS        ON) # only find static libs
set(Boost_USE_MULTITHREADED      ON)
set(Boost_USE_STATIC_RUNTIME    OFF)
find_package(Boost COMPONENTS date_time filesystem system ...)
if(Boost_FOUND)
  include_directories(${Boost_INCLUDE_DIRS})
endif()

# project var
set(PROJECT_INCLUDE_DIR ${CMAKE_SOURCE_DIR}/include)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)

include_directories(${PROJECT_INCLUDE_DIR})
include_directories(${COPPELIASIM_LIB_DIR}/simMath)

add_subdirectory(plugins)
