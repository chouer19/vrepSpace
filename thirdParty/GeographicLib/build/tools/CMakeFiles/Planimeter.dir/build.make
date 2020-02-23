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
include tools/CMakeFiles/Planimeter.dir/depend.make

# Include the progress variables for this target.
include tools/CMakeFiles/Planimeter.dir/progress.make

# Include the compile flags for this target's objects.
include tools/CMakeFiles/Planimeter.dir/flags.make

tools/CMakeFiles/Planimeter.dir/Planimeter.cpp.o: tools/CMakeFiles/Planimeter.dir/flags.make
tools/CMakeFiles/Planimeter.dir/Planimeter.cpp.o: ../tools/Planimeter.cpp
tools/CMakeFiles/Planimeter.dir/Planimeter.cpp.o: man/Planimeter.usage
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/CMakeFiles/Planimeter.dir/Planimeter.cpp.o"
	cd /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Planimeter.dir/Planimeter.cpp.o -c /home/chouer/workspace/goodTools/GeographicLib-1.50.1/tools/Planimeter.cpp

tools/CMakeFiles/Planimeter.dir/Planimeter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Planimeter.dir/Planimeter.cpp.i"
	cd /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chouer/workspace/goodTools/GeographicLib-1.50.1/tools/Planimeter.cpp > CMakeFiles/Planimeter.dir/Planimeter.cpp.i

tools/CMakeFiles/Planimeter.dir/Planimeter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Planimeter.dir/Planimeter.cpp.s"
	cd /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chouer/workspace/goodTools/GeographicLib-1.50.1/tools/Planimeter.cpp -o CMakeFiles/Planimeter.dir/Planimeter.cpp.s

tools/CMakeFiles/Planimeter.dir/Planimeter.cpp.o.requires:

.PHONY : tools/CMakeFiles/Planimeter.dir/Planimeter.cpp.o.requires

tools/CMakeFiles/Planimeter.dir/Planimeter.cpp.o.provides: tools/CMakeFiles/Planimeter.dir/Planimeter.cpp.o.requires
	$(MAKE) -f tools/CMakeFiles/Planimeter.dir/build.make tools/CMakeFiles/Planimeter.dir/Planimeter.cpp.o.provides.build
.PHONY : tools/CMakeFiles/Planimeter.dir/Planimeter.cpp.o.provides

tools/CMakeFiles/Planimeter.dir/Planimeter.cpp.o.provides.build: tools/CMakeFiles/Planimeter.dir/Planimeter.cpp.o


# Object files for target Planimeter
Planimeter_OBJECTS = \
"CMakeFiles/Planimeter.dir/Planimeter.cpp.o"

# External object files for target Planimeter
Planimeter_EXTERNAL_OBJECTS =

tools/Planimeter: tools/CMakeFiles/Planimeter.dir/Planimeter.cpp.o
tools/Planimeter: tools/CMakeFiles/Planimeter.dir/build.make
tools/Planimeter: src/libGeographic.so.19.0.1
tools/Planimeter: tools/CMakeFiles/Planimeter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Planimeter"
	cd /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Planimeter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/CMakeFiles/Planimeter.dir/build: tools/Planimeter

.PHONY : tools/CMakeFiles/Planimeter.dir/build

tools/CMakeFiles/Planimeter.dir/requires: tools/CMakeFiles/Planimeter.dir/Planimeter.cpp.o.requires

.PHONY : tools/CMakeFiles/Planimeter.dir/requires

tools/CMakeFiles/Planimeter.dir/clean:
	cd /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/tools && $(CMAKE_COMMAND) -P CMakeFiles/Planimeter.dir/cmake_clean.cmake
.PHONY : tools/CMakeFiles/Planimeter.dir/clean

tools/CMakeFiles/Planimeter.dir/depend:
	cd /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chouer/workspace/goodTools/GeographicLib-1.50.1 /home/chouer/workspace/goodTools/GeographicLib-1.50.1/tools /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/tools /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/tools/CMakeFiles/Planimeter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/CMakeFiles/Planimeter.dir/depend

