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
include tests/CMakeFiles/json.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/json.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/json.dir/flags.make

tests/CMakeFiles/json.dir/json.cpp.o: tests/CMakeFiles/json.dir/flags.make
tests/CMakeFiles/json.dir/json.cpp.o: ../tests/json.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/json.dir/json.cpp.o"
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/json.dir/json.cpp.o -c /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/tests/json.cpp

tests/CMakeFiles/json.dir/json.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/json.dir/json.cpp.i"
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/tests/json.cpp > CMakeFiles/json.dir/json.cpp.i

tests/CMakeFiles/json.dir/json.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/json.dir/json.cpp.s"
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/tests/json.cpp -o CMakeFiles/json.dir/json.cpp.s

tests/CMakeFiles/json.dir/json.cpp.o.requires:

.PHONY : tests/CMakeFiles/json.dir/json.cpp.o.requires

tests/CMakeFiles/json.dir/json.cpp.o.provides: tests/CMakeFiles/json.dir/json.cpp.o.requires
	$(MAKE) -f tests/CMakeFiles/json.dir/build.make tests/CMakeFiles/json.dir/json.cpp.o.provides.build
.PHONY : tests/CMakeFiles/json.dir/json.cpp.o.provides

tests/CMakeFiles/json.dir/json.cpp.o.provides.build: tests/CMakeFiles/json.dir/json.cpp.o


# Object files for target json
json_OBJECTS = \
"CMakeFiles/json.dir/json.cpp.o"

# External object files for target json
json_EXTERNAL_OBJECTS =

tests/json: tests/CMakeFiles/json.dir/json.cpp.o
tests/json: tests/CMakeFiles/json.dir/build.make
tests/json: libb0.so
tests/json: /usr/local/lib/libzmq.so
tests/json: /usr/lib/x86_64-linux-gnu/libboost_thread.so
tests/json: /usr/lib/x86_64-linux-gnu/libboost_system.so
tests/json: /usr/lib/x86_64-linux-gnu/libboost_regex.so
tests/json: /usr/lib/x86_64-linux-gnu/libboost_timer.so
tests/json: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
tests/json: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
tests/json: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
tests/json: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
tests/json: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
tests/json: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
tests/json: /usr/lib/x86_64-linux-gnu/libpthread.so
tests/json: /usr/lib/x86_64-linux-gnu/libz.so
tests/json: /usr/lib/x86_64-linux-gnu/liblz4.so
tests/json: tests/CMakeFiles/json.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable json"
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/json.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/json.dir/build: tests/json

.PHONY : tests/CMakeFiles/json.dir/build

tests/CMakeFiles/json.dir/requires: tests/CMakeFiles/json.dir/json.cpp.o.requires

.PHONY : tests/CMakeFiles/json.dir/requires

tests/CMakeFiles/json.dir/clean:
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/json.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/json.dir/clean

tests/CMakeFiles/json.dir/depend:
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chouer/workspace/vrep/coppeliasim/programming/bluezero /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/tests /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/tests /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/tests/CMakeFiles/json.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/json.dir/depend
