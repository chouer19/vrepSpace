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
CMAKE_SOURCE_DIR = /home/chouer/workspace/goodTools/GeographicLib-1.50.1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build

# Include any dependencies generated for this target.
include examples/CMakeFiles/example-Utility.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/example-Utility.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/example-Utility.dir/flags.make

examples/CMakeFiles/example-Utility.dir/example-Utility.cpp.o: examples/CMakeFiles/example-Utility.dir/flags.make
examples/CMakeFiles/example-Utility.dir/example-Utility.cpp.o: ../examples/example-Utility.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/example-Utility.dir/example-Utility.cpp.o"
	cd /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example-Utility.dir/example-Utility.cpp.o -c /home/chouer/workspace/goodTools/GeographicLib-1.50.1/examples/example-Utility.cpp

examples/CMakeFiles/example-Utility.dir/example-Utility.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example-Utility.dir/example-Utility.cpp.i"
	cd /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chouer/workspace/goodTools/GeographicLib-1.50.1/examples/example-Utility.cpp > CMakeFiles/example-Utility.dir/example-Utility.cpp.i

examples/CMakeFiles/example-Utility.dir/example-Utility.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example-Utility.dir/example-Utility.cpp.s"
	cd /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chouer/workspace/goodTools/GeographicLib-1.50.1/examples/example-Utility.cpp -o CMakeFiles/example-Utility.dir/example-Utility.cpp.s

examples/CMakeFiles/example-Utility.dir/example-Utility.cpp.o.requires:

.PHONY : examples/CMakeFiles/example-Utility.dir/example-Utility.cpp.o.requires

examples/CMakeFiles/example-Utility.dir/example-Utility.cpp.o.provides: examples/CMakeFiles/example-Utility.dir/example-Utility.cpp.o.requires
	$(MAKE) -f examples/CMakeFiles/example-Utility.dir/build.make examples/CMakeFiles/example-Utility.dir/example-Utility.cpp.o.provides.build
.PHONY : examples/CMakeFiles/example-Utility.dir/example-Utility.cpp.o.provides

examples/CMakeFiles/example-Utility.dir/example-Utility.cpp.o.provides.build: examples/CMakeFiles/example-Utility.dir/example-Utility.cpp.o


# Object files for target example-Utility
example__Utility_OBJECTS = \
"CMakeFiles/example-Utility.dir/example-Utility.cpp.o"

# External object files for target example-Utility
example__Utility_EXTERNAL_OBJECTS =

examples/example-Utility: examples/CMakeFiles/example-Utility.dir/example-Utility.cpp.o
examples/example-Utility: examples/CMakeFiles/example-Utility.dir/build.make
examples/example-Utility: src/libGeographic.so.19.0.1
examples/example-Utility: examples/CMakeFiles/example-Utility.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable example-Utility"
	cd /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example-Utility.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/example-Utility.dir/build: examples/example-Utility

.PHONY : examples/CMakeFiles/example-Utility.dir/build

examples/CMakeFiles/example-Utility.dir/requires: examples/CMakeFiles/example-Utility.dir/example-Utility.cpp.o.requires

.PHONY : examples/CMakeFiles/example-Utility.dir/requires

examples/CMakeFiles/example-Utility.dir/clean:
	cd /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/example-Utility.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/example-Utility.dir/clean

examples/CMakeFiles/example-Utility.dir/depend:
	cd /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chouer/workspace/goodTools/GeographicLib-1.50.1 /home/chouer/workspace/goodTools/GeographicLib-1.50.1/examples /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/examples /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/examples/CMakeFiles/example-Utility.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/example-Utility.dir/depend

