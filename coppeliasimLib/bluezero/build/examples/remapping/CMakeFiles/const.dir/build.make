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
include examples/remapping/CMakeFiles/const.dir/depend.make

# Include the progress variables for this target.
include examples/remapping/CMakeFiles/const.dir/progress.make

# Include the compile flags for this target's objects.
include examples/remapping/CMakeFiles/const.dir/flags.make

examples/remapping/CMakeFiles/const.dir/const.cpp.o: examples/remapping/CMakeFiles/const.dir/flags.make
examples/remapping/CMakeFiles/const.dir/const.cpp.o: ../examples/remapping/const.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/remapping/CMakeFiles/const.dir/const.cpp.o"
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/examples/remapping && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/const.dir/const.cpp.o -c /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/examples/remapping/const.cpp

examples/remapping/CMakeFiles/const.dir/const.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/const.dir/const.cpp.i"
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/examples/remapping && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/examples/remapping/const.cpp > CMakeFiles/const.dir/const.cpp.i

examples/remapping/CMakeFiles/const.dir/const.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/const.dir/const.cpp.s"
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/examples/remapping && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/examples/remapping/const.cpp -o CMakeFiles/const.dir/const.cpp.s

examples/remapping/CMakeFiles/const.dir/const.cpp.o.requires:

.PHONY : examples/remapping/CMakeFiles/const.dir/const.cpp.o.requires

examples/remapping/CMakeFiles/const.dir/const.cpp.o.provides: examples/remapping/CMakeFiles/const.dir/const.cpp.o.requires
	$(MAKE) -f examples/remapping/CMakeFiles/const.dir/build.make examples/remapping/CMakeFiles/const.dir/const.cpp.o.provides.build
.PHONY : examples/remapping/CMakeFiles/const.dir/const.cpp.o.provides

examples/remapping/CMakeFiles/const.dir/const.cpp.o.provides.build: examples/remapping/CMakeFiles/const.dir/const.cpp.o


# Object files for target const
const_OBJECTS = \
"CMakeFiles/const.dir/const.cpp.o"

# External object files for target const
const_EXTERNAL_OBJECTS =

examples/remapping/const: examples/remapping/CMakeFiles/const.dir/const.cpp.o
examples/remapping/const: examples/remapping/CMakeFiles/const.dir/build.make
examples/remapping/const: libb0.so
examples/remapping/const: /usr/local/lib/libzmq.so
examples/remapping/const: /usr/lib/x86_64-linux-gnu/libboost_thread.so
examples/remapping/const: /usr/lib/x86_64-linux-gnu/libboost_system.so
examples/remapping/const: /usr/lib/x86_64-linux-gnu/libboost_regex.so
examples/remapping/const: /usr/lib/x86_64-linux-gnu/libboost_timer.so
examples/remapping/const: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
examples/remapping/const: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
examples/remapping/const: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
examples/remapping/const: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
examples/remapping/const: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
examples/remapping/const: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
examples/remapping/const: /usr/lib/x86_64-linux-gnu/libpthread.so
examples/remapping/const: /usr/lib/x86_64-linux-gnu/libz.so
examples/remapping/const: /usr/lib/x86_64-linux-gnu/liblz4.so
examples/remapping/const: examples/remapping/CMakeFiles/const.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable const"
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/examples/remapping && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/const.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/remapping/CMakeFiles/const.dir/build: examples/remapping/const

.PHONY : examples/remapping/CMakeFiles/const.dir/build

examples/remapping/CMakeFiles/const.dir/requires: examples/remapping/CMakeFiles/const.dir/const.cpp.o.requires

.PHONY : examples/remapping/CMakeFiles/const.dir/requires

examples/remapping/CMakeFiles/const.dir/clean:
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/examples/remapping && $(CMAKE_COMMAND) -P CMakeFiles/const.dir/cmake_clean.cmake
.PHONY : examples/remapping/CMakeFiles/const.dir/clean

examples/remapping/CMakeFiles/const.dir/depend:
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chouer/workspace/vrep/coppeliasim/programming/bluezero /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/examples/remapping /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/examples/remapping /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/examples/remapping/CMakeFiles/const.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/remapping/CMakeFiles/const.dir/depend
