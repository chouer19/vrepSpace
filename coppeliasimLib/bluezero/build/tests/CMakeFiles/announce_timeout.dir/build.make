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
include tests/CMakeFiles/announce_timeout.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/announce_timeout.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/announce_timeout.dir/flags.make

tests/CMakeFiles/announce_timeout.dir/announce_timeout.cpp.o: tests/CMakeFiles/announce_timeout.dir/flags.make
tests/CMakeFiles/announce_timeout.dir/announce_timeout.cpp.o: ../tests/announce_timeout.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/announce_timeout.dir/announce_timeout.cpp.o"
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/announce_timeout.dir/announce_timeout.cpp.o -c /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/tests/announce_timeout.cpp

tests/CMakeFiles/announce_timeout.dir/announce_timeout.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/announce_timeout.dir/announce_timeout.cpp.i"
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/tests/announce_timeout.cpp > CMakeFiles/announce_timeout.dir/announce_timeout.cpp.i

tests/CMakeFiles/announce_timeout.dir/announce_timeout.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/announce_timeout.dir/announce_timeout.cpp.s"
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/tests/announce_timeout.cpp -o CMakeFiles/announce_timeout.dir/announce_timeout.cpp.s

tests/CMakeFiles/announce_timeout.dir/announce_timeout.cpp.o.requires:

.PHONY : tests/CMakeFiles/announce_timeout.dir/announce_timeout.cpp.o.requires

tests/CMakeFiles/announce_timeout.dir/announce_timeout.cpp.o.provides: tests/CMakeFiles/announce_timeout.dir/announce_timeout.cpp.o.requires
	$(MAKE) -f tests/CMakeFiles/announce_timeout.dir/build.make tests/CMakeFiles/announce_timeout.dir/announce_timeout.cpp.o.provides.build
.PHONY : tests/CMakeFiles/announce_timeout.dir/announce_timeout.cpp.o.provides

tests/CMakeFiles/announce_timeout.dir/announce_timeout.cpp.o.provides.build: tests/CMakeFiles/announce_timeout.dir/announce_timeout.cpp.o


# Object files for target announce_timeout
announce_timeout_OBJECTS = \
"CMakeFiles/announce_timeout.dir/announce_timeout.cpp.o"

# External object files for target announce_timeout
announce_timeout_EXTERNAL_OBJECTS =

tests/announce_timeout: tests/CMakeFiles/announce_timeout.dir/announce_timeout.cpp.o
tests/announce_timeout: tests/CMakeFiles/announce_timeout.dir/build.make
tests/announce_timeout: libb0.so
tests/announce_timeout: /usr/local/lib/libzmq.so
tests/announce_timeout: /usr/lib/x86_64-linux-gnu/libboost_thread.so
tests/announce_timeout: /usr/lib/x86_64-linux-gnu/libboost_system.so
tests/announce_timeout: /usr/lib/x86_64-linux-gnu/libboost_regex.so
tests/announce_timeout: /usr/lib/x86_64-linux-gnu/libboost_timer.so
tests/announce_timeout: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
tests/announce_timeout: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
tests/announce_timeout: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
tests/announce_timeout: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
tests/announce_timeout: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
tests/announce_timeout: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
tests/announce_timeout: /usr/lib/x86_64-linux-gnu/libpthread.so
tests/announce_timeout: /usr/lib/x86_64-linux-gnu/libz.so
tests/announce_timeout: /usr/lib/x86_64-linux-gnu/liblz4.so
tests/announce_timeout: tests/CMakeFiles/announce_timeout.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable announce_timeout"
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/announce_timeout.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/announce_timeout.dir/build: tests/announce_timeout

.PHONY : tests/CMakeFiles/announce_timeout.dir/build

tests/CMakeFiles/announce_timeout.dir/requires: tests/CMakeFiles/announce_timeout.dir/announce_timeout.cpp.o.requires

.PHONY : tests/CMakeFiles/announce_timeout.dir/requires

tests/CMakeFiles/announce_timeout.dir/clean:
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/announce_timeout.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/announce_timeout.dir/clean

tests/CMakeFiles/announce_timeout.dir/depend:
	cd /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chouer/workspace/vrep/coppeliasim/programming/bluezero /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/tests /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/tests /home/chouer/workspace/vrep/coppeliasim/programming/bluezero/build/tests/CMakeFiles/announce_timeout.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/announce_timeout.dir/depend
