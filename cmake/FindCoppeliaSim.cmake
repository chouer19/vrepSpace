function(COPPELIASIM_FIND_ERROR MESSAGE)
    if(CoppeliaSim_FIND_REQUIRED)
        message(FATAL_ERROR ${MESSAGE})
    elseif(NOT CoppeliaSim_FIND_QUIETLY)
        message(SEND_ERROR ${MESSAGE})
    endif()
endfunction()


if(NOT COPPELIASIM_ROOT_DIR)
    set(COPPELIASIM_LIB_DIR ${PROJECT_SOURCE_DIR}/coppeliasimLib)
endif()
set(LIBPLUGIN_DIR ${COPPELIASIM_LIB_DIR}/libPlugin)

foreach(D IN ITEMS
        "${COPPELIASIM_LIB_DIR}/include"
        "${COPPELIASIM_LIB_DIR}/common"
)
    if(NOT EXISTS "${D}" AND IS_DIRECTORY "${D}")
        coppeliasim_find_error("Directory ${D} does not exist.")
        return()
    endif()
endforeach()

set(COPPELIASIM_INCLUDE_DIR "${COPPELIASIM_LIB_DIR}/include")
set(COPPELIASIM_COMMON_DIR "${COPPELIASIM_LIB_DIR}/common")

include_directories(${LIBPLUGIN_DIR})
include_directories(${COPPELIASIM_INCLUDE_DIR})
include_directories(${COPPELIASIM_INCLUDE_DIR}/stack)

foreach(F IN ITEMS
        "${COPPELIASIM_INCLUDE_DIR}/simLib.h"
        "${COPPELIASIM_INCLUDE_DIR}/simConst.h"
        "${COPPELIASIM_COMMON_DIR}/simLib.cpp"
        "${LIBPLUGIN_DIR}/simPlusPlus/Plugin.cpp"
)
    if(NOT EXISTS "${F}")
        coppeliasim_find_error("File ${F} does not exist.")
        return()
    endif()
endforeach()

set(COPPELIASIM_EXPORTED_SOURCES
    "${COPPELIASIM_EXPORTED_SOURCES}"
    "${COPPELIASIM_COMMON_DIR}/simLib.cpp"
    "${LIBPLUGIN_DIR}/simPlusPlus/Plugin.cpp")

# check required version:

if(DEFINED CoppeliaSim_FIND_VERSION)
    if(NOT CoppeliaSim_FIND_QUIETLY)
        message(STATUS "Checking CoppeliaSim header version...")
    endif()
    set(COPPELIASIM_VERSION_CHECK_SRC "${CMAKE_BINARY_DIR}/sim_version_check.cpp")
    set(COPPELIASIM_VERSION_CHECK_BIN "${CMAKE_BINARY_DIR}/sim_version_check")
    file(WRITE ${COPPELIASIM_VERSION_CHECK_SRC} "
#include <iostream>
#include <simConst.h>
int main() {
    char sep = ';';
    std::cout
        << SIM_PROGRAM_VERSION_NB/10000 << sep
        << SIM_PROGRAM_VERSION_NB/100%100 << sep
        << SIM_PROGRAM_VERSION_NB%100 << sep
        << SIM_PROGRAM_REVISION_NB << sep
        << 0 << std::endl;
}
")
    try_run(COPPELIASIM_VERSION_RUN_RESULT COPPELIASIM_VERSION_COMPILE_RESULT ${COPPELIASIM_VERSION_CHECK_BIN} ${COPPELIASIM_VERSION_CHECK_SRC} CMAKE_FLAGS -DINCLUDE_DIRECTORIES=${COPPELIASIM_INCLUDE_DIR} RUN_OUTPUT_VARIABLE COPPELIASIM_VERSION_CHECK_OUTPUT)
    if(${COPPELIASIM_VERSION_COMPILE_RESULT})
        if(${COPPELIASIM_VERSION_RUN_RESULT} EQUAL 0)
            list(GET COPPELIASIM_VERSION_CHECK_OUTPUT 0 COPPELIASIM_VERSION_MAJOR)
            list(GET COPPELIASIM_VERSION_CHECK_OUTPUT 1 COPPELIASIM_VERSION_MINOR)
            list(GET COPPELIASIM_VERSION_CHECK_OUTPUT 2 COPPELIASIM_VERSION_PATCH)
            list(GET COPPELIASIM_VERSION_CHECK_OUTPUT 3 COPPELIASIM_VERSION_TWEAK)
            set(COPPELIASIM_VERSION_COUNT 4)
            list(GET COPPELIASIM_VERSION_CHECK_OUTPUT 3 COPPELIASIM_REVISION)
            set(COPPELIASIM_VERSION "${COPPELIASIM_VERSION_MAJOR}.${COPPELIASIM_VERSION_MINOR}.${COPPELIASIM_VERSION_PATCH}.${COPPELIASIM_REVISION}")
            set(COPPELIASIM_VERSION_STR "${COPPELIASIM_VERSION_MAJOR}.${COPPELIASIM_VERSION_MINOR}.${COPPELIASIM_VERSION_PATCH} rev${COPPELIASIM_REVISION}")
            if(NOT CoppeliaSim_FIND_QUIETLY)
                message(STATUS "CoppeliaSim headers version ${COPPELIASIM_VERSION_STR}")
            endif()
            if(${COPPELIASIM_VERSION} VERSION_LESS ${CoppeliaSim_FIND_VERSION})
                coppeliasim_find_error("Found CoppeliaSim version ${COPPELIASIM_VERSION} but ${CoppeliaSim_FIND_VERSION} required.")
                return()
            endif()
        else()
            coppeliasim_find_error("Failed to run CoppeliaSim version check program")
            return()
        endif()
    else()
        coppeliasim_find_error("Failed to compile CoppeliaSim version check program")
        return()
    endif()
endif()

if(WIN32)
    add_definitions(-DWIN_SIM)
    add_definitions(-DNOMINMAX)
    add_definitions(-Dstrcasecmp=_stricmp)
    set(COPPELIASIM_LIBRARIES shlwapi)
elseif(UNIX AND NOT APPLE)
    add_definitions(-DLIN_SIM)
    set(COPPELIASIM_LIBRARIES "")
elseif(UNIX AND APPLE)
    add_definitions(-DMAC_SIM)
    set(COPPELIASIM_LIBRARIES "")
endif()

function(COPPELIASIM_GENERATE_STUBS GENERATED_OUTPUT_DIR)
    cmake_parse_arguments(COPPELIASIM_GENERATE_STUBS "" "XML_FILE;LUA_FILE" "" ${ARGN})
    if(NOT CoppeliaSim_FIND_QUIETLY)
        message(STATUS "Adding simStubsGen command...")
    endif()
    if("${COPPELIASIM_GENERATE_STUBS_LUA_FILE}" STREQUAL "")
        add_custom_command(OUTPUT ${GENERATED_OUTPUT_DIR}/stubs.cpp ${GENERATED_OUTPUT_DIR}/stubs.h
            COMMAND python ${LIBPLUGIN_DIR}/simStubsGen/generate.py --xml-file ${COPPELIASIM_GENERATE_STUBS_XML_FILE} --gen-all ${GENERATED_OUTPUT_DIR}
            DEPENDS ${COPPELIASIM_GENERATE_STUBS_XML_FILE})
    else()
        add_custom_command(OUTPUT ${GENERATED_OUTPUT_DIR}/stubs.cpp ${GENERATED_OUTPUT_DIR}/stubs.h ${GENERATED_OUTPUT_DIR}/lua_calltips.cpp
            COMMAND python ${LIBPLUGIN_DIR}/simStubsGen/generate.py --xml-file ${COPPELIASIM_GENERATE_STUBS_XML_FILE} --lua-file ${COPPELIASIM_GENERATE_STUBS_LUA_FILE} --gen-all ${GENERATED_OUTPUT_DIR}
            DEPENDS ${COPPELIASIM_GENERATE_STUBS_XML_FILE})
    endif()
    set_property(SOURCE ${GENERATED_OUTPUT_DIR}/stubs.cpp PROPERTY SKIP_AUTOGEN ON)
    set_property(SOURCE ${GENERATED_OUTPUT_DIR}/stubs.h PROPERTY SKIP_AUTOGEN ON)
    include_directories("${GENERATED_OUTPUT_DIR}")
    set(COPPELIASIM_EXPORTED_SOURCES ${COPPELIASIM_EXPORTED_SOURCES} "${GENERATED_OUTPUT_DIR}/stubs.cpp" PARENT_SCOPE)
endfunction(COPPELIASIM_GENERATE_STUBS)

find_package(Git)
if(EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/.git AND GIT_FOUND)
    execute_process(
        COMMAND ${GIT_EXECUTABLE} rev-parse --short HEAD
        WORKING_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}"
        OUTPUT_VARIABLE "BUILD_GIT_VERSION"
        ERROR_QUIET
        OUTPUT_STRIP_TRAILING_WHITESPACE)
else()
    set(BUILD_GIT_VERSION "unknown")
endif()

set(COPPELIASIM_FOUND TRUE)
