# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake"

# The command to remove a file.
RM = "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/benediktschesch/MyEnv/lib/python3.7/site-packages/dace/codegen

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/_MatMult__sdfg_2/build"

# Include any dependencies generated for this target.
include CMakeFiles/dacestub__MatMult__sdfg_2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/dacestub__MatMult__sdfg_2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dacestub__MatMult__sdfg_2.dir/flags.make

CMakeFiles/dacestub__MatMult__sdfg_2.dir/tools/dacestub.cpp.o: CMakeFiles/dacestub__MatMult__sdfg_2.dir/flags.make
CMakeFiles/dacestub__MatMult__sdfg_2.dir/tools/dacestub.cpp.o: /Users/benediktschesch/MyEnv/lib/python3.7/site-packages/dace/codegen/tools/dacestub.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/_MatMult__sdfg_2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/dacestub__MatMult__sdfg_2.dir/tools/dacestub.cpp.o"
	/usr/local/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dacestub__MatMult__sdfg_2.dir/tools/dacestub.cpp.o -c /Users/benediktschesch/MyEnv/lib/python3.7/site-packages/dace/codegen/tools/dacestub.cpp

CMakeFiles/dacestub__MatMult__sdfg_2.dir/tools/dacestub.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dacestub__MatMult__sdfg_2.dir/tools/dacestub.cpp.i"
	/usr/local/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/benediktschesch/MyEnv/lib/python3.7/site-packages/dace/codegen/tools/dacestub.cpp > CMakeFiles/dacestub__MatMult__sdfg_2.dir/tools/dacestub.cpp.i

CMakeFiles/dacestub__MatMult__sdfg_2.dir/tools/dacestub.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dacestub__MatMult__sdfg_2.dir/tools/dacestub.cpp.s"
	/usr/local/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/benediktschesch/MyEnv/lib/python3.7/site-packages/dace/codegen/tools/dacestub.cpp -o CMakeFiles/dacestub__MatMult__sdfg_2.dir/tools/dacestub.cpp.s

# Object files for target dacestub__MatMult__sdfg_2
dacestub__MatMult__sdfg_2_OBJECTS = \
"CMakeFiles/dacestub__MatMult__sdfg_2.dir/tools/dacestub.cpp.o"

# External object files for target dacestub__MatMult__sdfg_2
dacestub__MatMult__sdfg_2_EXTERNAL_OBJECTS =

libdacestub__MatMult__sdfg_2.dylib: CMakeFiles/dacestub__MatMult__sdfg_2.dir/tools/dacestub.cpp.o
libdacestub__MatMult__sdfg_2.dylib: CMakeFiles/dacestub__MatMult__sdfg_2.dir/build.make
libdacestub__MatMult__sdfg_2.dylib: CMakeFiles/dacestub__MatMult__sdfg_2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/_MatMult__sdfg_2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libdacestub__MatMult__sdfg_2.dylib"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dacestub__MatMult__sdfg_2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dacestub__MatMult__sdfg_2.dir/build: libdacestub__MatMult__sdfg_2.dylib

.PHONY : CMakeFiles/dacestub__MatMult__sdfg_2.dir/build

CMakeFiles/dacestub__MatMult__sdfg_2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dacestub__MatMult__sdfg_2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dacestub__MatMult__sdfg_2.dir/clean

CMakeFiles/dacestub__MatMult__sdfg_2.dir/depend:
	cd "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/_MatMult__sdfg_2/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/benediktschesch/MyEnv/lib/python3.7/site-packages/dace/codegen /Users/benediktschesch/MyEnv/lib/python3.7/site-packages/dace/codegen "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/_MatMult__sdfg_2/build" "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/_MatMult__sdfg_2/build" "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/_MatMult__sdfg_2/build/CMakeFiles/dacestub__MatMult__sdfg_2.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/dacestub__MatMult__sdfg_2.dir/depend
