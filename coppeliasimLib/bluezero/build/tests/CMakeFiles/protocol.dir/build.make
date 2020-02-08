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
include tests/CMakeFiles/protocol.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/protocol.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/protocol.dir/flags.make

tests/CMakeFiles/protocol.dir/protocol.cpp.o: tests/CMakeFiles/protocol.dir/flags.make
tests/CMakeFiles/protocol.dir/protocol.cpp.o: ../tests/protocol.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/protocol.dir/protocol.cpp.o"
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/protocol.dir/protocol.cpp.o -c /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/tests/protocol.cpp

tests/CMakeFiles/protocol.dir/protocol.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/protocol.dir/protocol.cpp.i"
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/tests/protocol.cpp > CMakeFiles/protocol.dir/protocol.cpp.i

tests/CMakeFiles/protocol.dir/protocol.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/protocol.dir/protocol.cpp.s"
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/tests/protocol.cpp -o CMakeFiles/protocol.dir/protocol.cpp.s

tests/CMakeFiles/protocol.dir/protocol.cpp.o.requires:

.PHONY : tests/CMakeFiles/protocol.dir/protocol.cpp.o.requires

tests/CMakeFiles/protocol.dir/protocol.cpp.o.provides: tests/CMakeFiles/protocol.dir/protocol.cpp.o.requires
	$(MAKE) -f tests/CMakeFiles/protocol.dir/build.make tests/CMakeFiles/protocol.dir/protocol.cpp.o.provides.build
.PHONY : tests/CMakeFiles/protocol.dir/protocol.cpp.o.provides

tests/CMakeFiles/protocol.dir/protocol.cpp.o.provides.build: tests/CMakeFiles/protocol.dir/protocol.cpp.o


# Object files for target protocol
protocol_OBJECTS = \
"CMakeFiles/protocol.dir/protocol.cpp.o"

# External object files for target protocol
protocol_EXTERNAL_OBJECTS =

tests/protocol: tests/CMakeFiles/protocol.dir/protocol.cpp.o
tests/protocol: tests/CMakeFiles/protocol.dir/build.make
tests/protocol: libb0.so
tests/protocol: /usr/local/lib/libzmq.so
tests/protocol: /usr/lib/x86_64-linux-gnu/libboost_thread.so
tests/protocol: /usr/lib/x86_64-linux-gnu/libboost_system.so
tests/protocol: /usr/lib/x86_64-linux-gnu/libboost_regex.so
tests/protocol: /usr/lib/x86_64-linux-gnu/libboost_timer.so
tests/protocol: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
tests/protocol: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
tests/protocol: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
tests/protocol: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
tests/protocol: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
tests/protocol: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
tests/protocol: /usr/lib/x86_64-linux-gnu/libpthread.so
tests/protocol: /usr/lib/x86_64-linux-gnu/libz.so
tests/protocol: /usr/lib/x86_64-linux-gnu/liblz4.so
tests/protocol: tests/CMakeFiles/protocol.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable protocol"
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/protocol.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/protocol.dir/build: tests/protocol

.PHONY : tests/CMakeFiles/protocol.dir/build

tests/CMakeFiles/protocol.dir/requires: tests/CMakeFiles/protocol.dir/protocol.cpp.o.requires

.PHONY : tests/CMakeFiles/protocol.dir/requires

tests/CMakeFiles/protocol.dir/clean:
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/protocol.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/protocol.dir/clean

tests/CMakeFiles/protocol.dir/depend:
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chouer/workspace/vrep/coppeliasim/programming/bluezero /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/tests /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/tests /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/tests/CMakeFiles/protocol.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/protocol.dir/depend

