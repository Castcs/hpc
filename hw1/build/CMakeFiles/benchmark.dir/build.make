# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /jet/home/cstiver/hw1/csci4110/hw1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /jet/home/cstiver/hw1/csci4110/hw1/build

# Include any dependencies generated for this target.
include CMakeFiles/benchmark.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/benchmark.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/benchmark.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/benchmark.dir/flags.make

CMakeFiles/benchmark.dir/benchmark.cpp.o: CMakeFiles/benchmark.dir/flags.make
CMakeFiles/benchmark.dir/benchmark.cpp.o: ../benchmark.cpp
CMakeFiles/benchmark.dir/benchmark.cpp.o: CMakeFiles/benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/jet/home/cstiver/hw1/csci4110/hw1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/benchmark.dir/benchmark.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/benchmark.dir/benchmark.cpp.o -MF CMakeFiles/benchmark.dir/benchmark.cpp.o.d -o CMakeFiles/benchmark.dir/benchmark.cpp.o -c /jet/home/cstiver/hw1/csci4110/hw1/benchmark.cpp

CMakeFiles/benchmark.dir/benchmark.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/benchmark.dir/benchmark.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /jet/home/cstiver/hw1/csci4110/hw1/benchmark.cpp > CMakeFiles/benchmark.dir/benchmark.cpp.i

CMakeFiles/benchmark.dir/benchmark.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/benchmark.dir/benchmark.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /jet/home/cstiver/hw1/csci4110/hw1/benchmark.cpp -o CMakeFiles/benchmark.dir/benchmark.cpp.s

benchmark: CMakeFiles/benchmark.dir/benchmark.cpp.o
benchmark: CMakeFiles/benchmark.dir/build.make
.PHONY : benchmark

# Rule to build all files generated by this target.
CMakeFiles/benchmark.dir/build: benchmark
.PHONY : CMakeFiles/benchmark.dir/build

CMakeFiles/benchmark.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/benchmark.dir/cmake_clean.cmake
.PHONY : CMakeFiles/benchmark.dir/clean

CMakeFiles/benchmark.dir/depend:
	cd /jet/home/cstiver/hw1/csci4110/hw1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /jet/home/cstiver/hw1/csci4110/hw1 /jet/home/cstiver/hw1/csci4110/hw1 /jet/home/cstiver/hw1/csci4110/hw1/build /jet/home/cstiver/hw1/csci4110/hw1/build /jet/home/cstiver/hw1/csci4110/hw1/build/CMakeFiles/benchmark.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/benchmark.dir/depend

