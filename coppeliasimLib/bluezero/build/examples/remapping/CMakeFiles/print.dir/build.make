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
include examples/remapping/CMakeFiles/print.dir/depend.make

# Include the progress variables for this target.
include examples/remapping/CMakeFiles/print.dir/progress.make

# Include the compile flags for this target's objects.
include examples/remapping/CMakeFiles/print.dir/flags.make

examples/remapping/CMakeFiles/print.dir/print.cpp.o: examples/remapping/CMakeFiles/print.dir/flags.make
examples/remapping/CMakeFiles/print.dir/print.cpp.o: ../examples/remapping/print.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/remapping/CMakeFiles/print.dir/print.cpp.o"
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/examples/remapping && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/print.dir/print.cpp.o -c /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/examples/remapping/print.cpp

examples/remapping/CMakeFiles/print.dir/print.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/print.dir/print.cpp.i"
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/examples/remapping && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/examples/remapping/print.cpp > CMakeFiles/print.dir/print.cpp.i

examples/remapping/CMakeFiles/print.dir/print.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/print.dir/print.cpp.s"
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/examples/remapping && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/examples/remapping/print.cpp -o CMakeFiles/print.dir/print.cpp.s

examples/remapping/CMakeFiles/print.dir/print.cpp.o.requires:

.PHONY : examples/remapping/CMakeFiles/print.dir/print.cpp.o.requires

examples/remapping/CMakeFiles/print.dir/print.cpp.o.provides: examples/remapping/CMakeFiles/print.dir/print.cpp.o.requires
	$(MAKE) -f examples/remapping/CMakeFiles/print.dir/build.make examples/remapping/CMakeFiles/print.dir/print.cpp.o.provides.build
.PHONY : examples/remapping/CMakeFiles/print.dir/print.cpp.o.provides

examples/remapping/CMakeFiles/print.dir/print.cpp.o.provides.build: examples/remapping/CMakeFiles/print.dir/print.cpp.o


# Object files for target print
print_OBJECTS = \
"CMakeFiles/print.dir/print.cpp.o"

# External object files for target print
print_EXTERNAL_OBJECTS =

examples/remapping/print: examples/remapping/CMakeFiles/print.dir/print.cpp.o
examples/remapping/print: examples/remapping/CMakeFiles/print.dir/build.make
examples/remapping/print: libb0.so
examples/remapping/print: /usr/local/lib/libzmq.so
examples/remapping/print: /usr/lib/x86_64-linux-gnu/libboost_thread.so
examples/remapping/print: /usr/lib/x86_64-linux-gnu/libboost_system.so
examples/remapping/print: /usr/lib/x86_64-linux-gnu/libboost_regex.so
examples/remapping/print: /usr/lib/x86_64-linux-gnu/libboost_timer.so
examples/remapping/print: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
examples/remapping/print: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
examples/remapping/print: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
examples/remapping/print: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
examples/remapping/print: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
examples/remapping/print: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
examples/remapping/print: /usr/lib/x86_64-linux-gnu/libpthread.so
examples/remapping/print: /usr/lib/x86_64-linux-gnu/libz.so
examples/remapping/print: /usr/lib/x86_64-linux-gnu/liblz4.so
examples/remapping/print: examples/remapping/CMakeFiles/print.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable print"
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/examples/remapping && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/print.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/remapping/CMakeFiles/print.dir/build: examples/remapping/print

.PHONY : examples/remapping/CMakeFiles/print.dir/build

examples/remapping/CMakeFiles/print.dir/requires: examples/remapping/CMakeFiles/print.dir/print.cpp.o.requires

.PHONY : examples/remapping/CMakeFiles/print.dir/requires

examples/remapping/CMakeFiles/print.dir/clean:
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/examples/remapping && $(CMAKE_COMMAND) -P CMakeFiles/print.dir/cmake_clean.cmake
.PHONY : examples/remapping/CMakeFiles/print.dir/clean

examples/remapping/CMakeFiles/print.dir/depend:
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chouer/workspace/vrep/coppeliasim/programming/bluezero /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/examples/remapping /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/examples/remapping /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/examples/remapping/CMakeFiles/print.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/remapping/CMakeFiles/print.dir/depend
