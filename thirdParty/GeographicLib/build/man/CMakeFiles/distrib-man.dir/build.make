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

# Utility rule file for distrib-man.

# Include the progress variables for this target.
include man/CMakeFiles/distrib-man.dir/progress.make

distrib-man: man/CMakeFiles/distrib-man.dir/build.make
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Installing man documentation page in source tree"
	cd /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man && for f in /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/CartConvert.1 /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/ConicProj.1 /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/GeodesicProj.1 /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/GeoConvert.1 /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/GeodSolve.1 /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/GeoidEval.1 /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/Gravity.1 /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/MagneticField.1 /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/Planimeter.1 /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/RhumbSolve.1 /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/TransverseMercatorProj.1 /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/CartConvert.usage /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/ConicProj.usage /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/GeodesicProj.usage /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/GeoConvert.usage /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/GeodSolve.usage /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/GeoidEval.usage /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/Gravity.usage /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/MagneticField.usage /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/Planimeter.usage /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/RhumbSolve.usage /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/TransverseMercatorProj.usage /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/CartConvert.1.html /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/ConicProj.1.html /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/GeodesicProj.1.html /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/GeoConvert.1.html /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/GeodSolve.1.html /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/GeoidEval.1.html /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/Gravity.1.html /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/MagneticField.1.html /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/Planimeter.1.html /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/RhumbSolve.1.html /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/TransverseMercatorProj.1.html; do install -C -m 644 $$f /home/chouer/workspace/goodTools/GeographicLib-1.50.1/man; done
.PHONY : distrib-man

# Rule to build all files generated by this target.
man/CMakeFiles/distrib-man.dir/build: distrib-man

.PHONY : man/CMakeFiles/distrib-man.dir/build

man/CMakeFiles/distrib-man.dir/clean:
	cd /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man && $(CMAKE_COMMAND) -P CMakeFiles/distrib-man.dir/cmake_clean.cmake
.PHONY : man/CMakeFiles/distrib-man.dir/clean

man/CMakeFiles/distrib-man.dir/depend:
	cd /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chouer/workspace/goodTools/GeographicLib-1.50.1 /home/chouer/workspace/goodTools/GeographicLib-1.50.1/man /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man /home/chouer/workspace/goodTools/GeographicLib-1.50.1/build/man/CMakeFiles/distrib-man.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : man/CMakeFiles/distrib-man.dir/depend

