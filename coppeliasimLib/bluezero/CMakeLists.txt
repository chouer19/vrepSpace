cmake_minimum_required(VERSION 3.1)

project(bluezero)

include(CheckIncludeFileCXX)
include(CheckCSourceRuns)
include(CheckCXXSourceCompiles)
include(CheckCXXSourceRuns)

if(WIN32)
    set(BUILD_STATIC_LIB_DEFAULT ON)
else()
    set(BUILD_STATIC_LIB_DEFAULT OFF)
endif()
option(BUILD_STATIC_LIB "Build static library" ${BUILD_STATIC_LIB_DEFAULT})
option(BUILD_TOOLS "Build the tools (topic and service introspection, process manager...)" OFF)
option(BUILD_EXAMPLES "Build the examples" OFF)
option(BUILD_TESTS "Build the testcases" OFF)
option(BUILD_GUI "Build gui programs" OFF)
option(ENABLE_PROTOBUF "Protobuf support" OFF)
option(BINDINGS_BOOST_PYTHON "Compile python bindings (using boost::python)" OFF)
option(BINDINGS_JAVA "Compile Java bindings (using JNI)" OFF)
option(BINDINGS_LUA "Compile Lua bindings" OFF)
option(BINDINGS_SWIG "Enable build of bindings using SWIG" OFF)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_INCLUDE_CURRENT_DIR 1)
set(CMAKE_MACOSX_RPATH 1)
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/Modules/")
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
if("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang" OR "${CMAKE_CXX_COMPILER_ID}" STREQUAL "AppleClang")
    # clang
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-c++11-narrowing")
elseif("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
    # gcc
elseif("${CMAKE_CXX_COMPILER_ID}" STREQUAL "MSVC")
    # visual c++
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /W3 /wd4101")
endif()
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)

if(WIN32)
    set(Boost_USE_STATIC_LIBS OFF)
    set(Boost_USE_MULTITHREADED ON)
    set(Boost_USE_STATIC_RUNTIME OFF)
    add_definitions(-DBOOST_ALL_NO_LIB)
    add_definitions(-DWIN32_LEAN_AND_MEAN)
    add_definitions(-DBOOST_USE_WINDOWS_H)
    add_definitions(-DNOMINMAX)
endif()

find_package(Boost REQUIRED COMPONENTS thread system regex timer filesystem serialization program_options)
if(VCPKG_TOOLCHAIN)
    find_package(ZeroMQ CONFIG REQUIRED)
    set(ZMQ_LIBRARY libzmq)
else()
    find_package(ZMQ 4.1.4 REQUIRED)
endif()
find_package(ZLIB)
find_package(LZ4)
if(ENABLE_PROTOBUF)
    find_package(protobuf REQUIRED)
endif()
if(BINDINGS_JAVA)
    find_package(JNI REQUIRED)
endif()

if(EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/.git)
    find_package(Git)
    if(GIT_FOUND)
        if(NOT EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/include/cppzmq/CMakeLists.txt
                OR NOT EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/include/double-conversion/CMakeLists.txt
                OR NOT EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/include/spotify-json/CMakeLists.txt)
            execute_process(
                COMMAND ${GIT_EXECUTABLE} submodule update --init --recursive
                WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
            execute_process(COMMAND git submodule update WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
        endif()
    endif()
endif()

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include/cppzmq)
include_directories(${CMAKE_CURRENT_BINARY_DIR}/include)
include_directories(${CMAKE_CURRENT_BINARY_DIR})
include_directories(${Boost_INCLUDE_DIRS})
include_directories(${ZMQ_INCLUDE_DIRS})
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include/double-conversion)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include/spotify-json/include)
if(ZLIB_FOUND)
    include_directories(${ZLIB_INCLUDE_DIRS})
endif()
if(LZ4_FOUND)
    include_directories(${LZ4_INCLUDE_DIR})
endif()
if(ENABLE_PROTOBUF)
    include_directories(${Protobuf_INCLUDE_DIR})
endif()
if(BINDINGS_JAVA)
    include_directories(${JNI_INCLUDE_DIRS})
endif()

file(WRITE ${CMAKE_CURRENT_BINARY_DIR}/test_have_boost_process/main.cpp "#include <boost/process.hpp>
int main(){return 0;}")
try_compile(HAVE_BOOST_PROCESS
    ${CMAKE_CURRENT_BINARY_DIR}/test_have_boost_process
    ${CMAKE_CURRENT_BINARY_DIR}/test_have_boost_process/main.cpp
    CMAKE_FLAGS -DINCLUDE_DIRECTORIES=${Boost_INCLUDE_DIRS}
    COMPILE_DEFINITIONS "${Boost_DEFINITIONS} -std=c++11"
    LINK_LIBRARIES ${Boost_LIBRARIES}
    COPY_FILE ${CMAKE_CURRENT_BINARY_DIR}/test_have_boost_process/main)

check_cxx_source_compiles("
#include <cstring>
#include <signal.h>
int main()
{
    struct sigaction sa;
    std::memset(&sa, 0, sizeof(sa));
    sigfillset(&sa.sa_mask);
    sigaction(SIGINT, &sa, NULL);
}
" HAVE_POSIX_SIGNALS)

set(SAVE_CMAKE_REQUIRED_FLAGS ${CMAKE_REQUIRED_FLAGS})
set(CMAKE_REQUIRED_FLAGS "-D_GNU_SOURCE -Werror=implicit-function-declaration -pthread")
check_cxx_source_runs("
#include <pthread.h>
int main()
{
    pthread_setname_np(\"foo\");
    return 0;
}
" HAVE_PTHREAD_SETNAME_1)
check_c_source_runs("
#include <pthread.h>
int main()
{
    pthread_setname_np(pthread_self(), \"foo\");
    return 0;
}
" HAVE_PTHREAD_SETNAME_2)
check_c_source_runs("
#include <pthread.h>
int main()
{
    pthread_setname_np(pthread_self(), \"foo\", (void *)0);
    return 0;
}
" HAVE_PTHREAD_SETNAME_3)
set(CMAKE_REQUIRED_FLAGS ${SAVE_CMAKE_REQUIRED_FLAGS})

configure_file(${CMAKE_CURRENT_SOURCE_DIR}/config.h.in ${CMAKE_CURRENT_BINARY_DIR}/include/b0/config.h)

if(BINDINGS_JAVA)
    set(B0_EXTRA_SOURCES ${B0_EXTRA_SOURCES} bindings/java/java.cpp)
endif()

if(BINDINGS_LUA)
    set(B0_EXTRA_SOURCES ${B0_EXTRA_SOURCES} bindings/lua/lua.cpp)
endif()

if(ENABLE_PROTOBUF)
    set(B0_EXTRA_SOURCES ${B0_EXTRA_SOURCES} src/b0/protobuf/socket.cpp)
endif()

set(
    B0_SOURCES
    src/b0/b0.cpp
    src/b0/node_state.cpp
    src/b0/node.cpp
    src/b0/socket.cpp
    src/b0/publisher.cpp
    src/b0/subscriber.cpp
    src/b0/service_client.cpp
    src/b0/service_server.cpp
    src/b0/bindings/c.cpp
    src/b0/compress/compress.cpp
    src/b0/compress/lz4.cpp
    src/b0/compress/zlib.cpp
    src/b0/exception/exception.cpp
    src/b0/exception/argument_error.cpp
    src/b0/exception/invalid_state_transition.cpp
    src/b0/exception/message_pack_error.cpp
    src/b0/exception/message_unpack_error.cpp
    src/b0/exception/name_resolution_error.cpp
    src/b0/exception/unsupported_compression_algorithm.cpp
    src/b0/message/message_envelope.cpp
    src/b0/message/message.cpp
    src/b0/logger/logger.cpp
    src/b0/logger/level.cpp
    src/b0/resolver/client.cpp
    src/b0/resolver/resolver.cpp
    src/b0/utils/env.cpp
    src/b0/utils/thread_name.cpp
    src/b0/utils/time_sync.cpp
    src/b0/utils/graphviz.cpp
    ${B0_EXTRA_SOURCES}
)
set(
    DOUBLE_CONVERSION_SOURCES
    include/double-conversion/double-conversion/bignum-dtoa.cc
    include/double-conversion/double-conversion/bignum.cc
    include/double-conversion/double-conversion/cached-powers.cc
    include/double-conversion/double-conversion/diy-fp.cc
    include/double-conversion/double-conversion/double-conversion.cc
    include/double-conversion/double-conversion/fast-dtoa.cc
    include/double-conversion/double-conversion/fixed-dtoa.cc
    include/double-conversion/double-conversion/strtod.cc
)
set(
    SPOTIFY_JSON_SOURCES
    include/spotify-json/src/detail/encode_integer.cpp
    include/spotify-json/src/detail/escape.cpp
    include/spotify-json/src/detail/escape_sse42.cpp
    include/spotify-json/src/detail/skip_chars.cpp
    include/spotify-json/src/detail/skip_chars_sse42.cpp
    include/spotify-json/src/detail/skip_value.cpp
)

set(B0_LIBRARY_SHARED b0)
add_library(
    ${B0_LIBRARY_SHARED}
    SHARED
    ${B0_SOURCES}
    ${DOUBLE_CONVERSION_SOURCES}
    ${SPOTIFY_JSON_SOURCES}
)
target_compile_definitions(${B0_LIBRARY_SHARED} PRIVATE -DB0_LIBRARY)
target_link_libraries(${B0_LIBRARY_SHARED} ${ZMQ_LIBRARY} ${Boost_LIBRARIES})
if(ZLIB_FOUND)
    target_link_libraries(${B0_LIBRARY_SHARED} ${ZLIB_LIBRARIES})
endif()
if(LZ4_FOUND)
    target_link_libraries(${B0_LIBRARY_SHARED} ${LZ4_LIBRARY})
endif()
if(WIN32)
    target_link_libraries(${B0_LIBRARY_SHARED} wsock32 ws2_32)
endif()
if(ENABLE_PROTOBUF)
    target_link_libraries(${B0_LIBRARY_SHARED} ${Protobuf_LIBRARIES})
endif()

if(BUILD_STATIC_LIB)
set(B0_LIBRARY_STATIC b0-static)
add_library(
    ${B0_LIBRARY_STATIC}
    STATIC
    ${B0_SOURCES}
    ${DOUBLE_CONVERSION_SOURCES}
    ${SPOTIFY_JSON_SOURCES}
)
target_compile_definitions(${B0_LIBRARY_STATIC} PRIVATE -DB0_LIBRARY)
target_link_libraries(${B0_LIBRARY_STATIC} ${ZMQ_LIBRARY} ${Boost_LIBRARIES})
if(ZLIB_FOUND)
    target_link_libraries(${B0_LIBRARY_STATIC} ${ZLIB_LIBRARIES})
endif()
if(LZ4_FOUND)
    target_link_libraries(${B0_LIBRARY_STATIC} ${LZ4_LIBRARY})
endif()
if(WIN32)
    target_link_libraries(${B0_LIBRARY_STATIC} wsock32 ws2_32)
endif()
if(ENABLE_PROTOBUF)
    target_link_libraries(${B0_LIBRARY_STATIC} ${Protobuf_LIBRARIES})
endif()
endif(BUILD_STATIC_LIB)

if(WIN32 AND BUILD_STATIC_LIB)
    set(B0_LIBRARY ${B0_LIBRARY_STATIC})
else()
    set(B0_LIBRARY ${B0_LIBRARY_SHARED})
endif()
