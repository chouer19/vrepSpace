# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/chouer/workspace/vrep/coppeliasim/programming/bluezero

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build

# Include any dependencies generated for this target.
include examples/client_server_msg/CMakeFiles/client_node_msg.dir/depend.make

# Include the progress variables for this target.
include examples/client_server_msg/CMakeFiles/client_node_msg.dir/progress.make

# Include the compile flags for this target's objects.
include examples/client_server_msg/CMakeFiles/client_node_msg.dir/flags.make

examples/client_server_msg/CMakeFiles/client_node_msg.dir/client_node_msg.cpp.o: examples/client_server_msg/CMakeFiles/client_node_msg.dir/flags.make
examples/client_server_msg/CMakeFiles/client_node_msg.dir/client_node_msg.cpp.o: ../examples/client_server_msg/client_node_msg.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/client_server_msg/CMakeFiles/client_node_msg.dir/client_node_msg.cpp.o"
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/examples/client_server_msg && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client_node_msg.dir/client_node_msg.cpp.o -c /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/examples/client_server_msg/client_node_msg.cpp

examples/client_server_msg/CMakeFiles/client_node_msg.dir/client_node_msg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client_node_msg.dir/client_node_msg.cpp.i"
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/examples/client_server_msg && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/examples/client_server_msg/client_node_msg.cpp > CMakeFiles/client_node_msg.dir/client_node_msg.cpp.i

examples/client_server_msg/CMakeFiles/client_node_msg.dir/client_node_msg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client_node_msg.dir/client_node_msg.cpp.s"
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/examples/client_server_msg && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/examples/client_server_msg/client_node_msg.cpp -o CMakeFiles/client_node_msg.dir/client_node_msg.cpp.s

examples/client_server_msg/CMakeFiles/client_node_msg.dir/client_node_msg.cpp.o.requires:

.PHONY : examples/client_server_msg/CMakeFiles/client_node_msg.dir/client_node_msg.cpp.o.requires

examples/client_server_msg/CMakeFiles/client_node_msg.dir/client_node_msg.cpp.o.provides: examples/client_server_msg/CMakeFiles/client_node_msg.dir/client_node_msg.cpp.o.requires
	$(MAKE) -f examples/client_server_msg/CMakeFiles/client_node_msg.dir/build.make examples/client_server_msg/CMakeFiles/client_node_msg.dir/client_node_msg.cpp.o.provides.build
.PHONY : examples/client_server_msg/CMakeFiles/client_node_msg.dir/client_node_msg.cpp.o.provides

examples/client_server_msg/CMakeFiles/client_node_msg.dir/client_node_msg.cpp.o.provides.build: examples/client_server_msg/CMakeFiles/client_node_msg.dir/client_node_msg.cpp.o


# Object files for target client_node_msg
client_node_msg_OBJECTS = \
"CMakeFiles/client_node_msg.dir/client_node_msg.cpp.o"

# External object files for target client_node_msg
client_node_msg_EXTERNAL_OBJECTS =

examples/client_server_msg/client_node_msg: examples/client_server_msg/CMakeFiles/client_node_msg.dir/client_node_msg.cpp.o
examples/client_server_msg/client_node_msg: examples/client_server_msg/CMakeFiles/client_node_msg.dir/build.make
examples/client_server_msg/client_node_msg: libb0.so
examples/client_server_msg/client_node_msg: /usr/local/lib/libzmq.so
examples/client_server_msg/client_node_msg: /usr/lib/x86_64-linux-gnu/libboost_thread.so
examples/client_server_msg/client_node_msg: /usr/lib/x86_64-linux-gnu/libboost_system.so
examples/client_server_msg/client_node_msg: /usr/lib/x86_64-linux-gnu/libboost_regex.so
examples/client_server_msg/client_node_msg: /usr/lib/x86_64-linux-gnu/libboost_timer.so
examples/client_server_msg/client_node_msg: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
examples/client_server_msg/client_node_msg: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
examples/client_server_msg/client_node_msg: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
examples/client_server_msg/client_node_msg: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
examples/client_server_msg/client_node_msg: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
examples/client_server_msg/client_node_msg: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
examples/client_server_msg/client_node_msg: /usr/lib/x86_64-linux-gnu/libpthread.so
examples/client_server_msg/client_node_msg: /usr/lib/x86_64-linux-gnu/libz.so
examples/client_server_msg/client_node_msg: /usr/lib/x86_64-linux-gnu/liblz4.so
examples/client_server_msg/client_node_msg: examples/client_server_msg/CMakeFiles/client_node_msg.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable client_node_msg"
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/examples/client_server_msg && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/client_node_msg.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/client_server_msg/CMakeFiles/client_node_msg.dir/build: examples/client_server_msg/client_node_msg

.PHONY : examples/client_server_msg/CMakeFiles/client_node_msg.dir/build

examples/client_server_msg/CMakeFiles/client_node_msg.dir/requires: examples/client_server_msg/CMakeFiles/client_node_msg.dir/client_node_msg.cpp.o.requires

.PHONY : examples/client_server_msg/CMakeFiles/client_node_msg.dir/requires

examples/client_server_msg/CMakeFiles/client_node_msg.dir/clean:
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/examples/client_server_msg && $(CMAKE_COMMAND) -P CMakeFiles/client_node_msg.dir/cmake_clean.cmake
.PHONY : examples/client_server_msg/CMakeFiles/client_node_msg.dir/clean

examples/client_server_msg/CMakeFiles/client_node_msg.dir/depend:
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chouer/workspace/vrep/coppeliasim/programming/bluezero /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/examples/client_server_msg /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/examples/client_server_msg /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/examples/client_server_msg/CMakeFiles/client_node_msg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/client_server_msg/CMakeFiles/client_node_msg.dir/depend
