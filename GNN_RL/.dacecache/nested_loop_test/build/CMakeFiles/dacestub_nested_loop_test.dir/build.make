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
CMAKE_BINARY_DIR = "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/nested_loop_test/build"

# Include any dependencies generated for this target.
include CMakeFiles/dacestub_nested_loop_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/dacestub_nested_loop_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dacestub_nested_loop_test.dir/flags.make

CMakeFiles/dacestub_nested_loop_test.dir/tools/dacestub.cpp.o: CMakeFiles/dacestub_nested_loop_test.dir/flags.make
CMakeFiles/dacestub_nested_loop_test.dir/tools/dacestub.cpp.o: /Users/benediktschesch/MyEnv/lib/python3.7/site-packages/dace/codegen/tools/dacestub.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/nested_loop_test/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/dacestub_nested_loop_test.dir/tools/dacestub.cpp.o"
	/usr/local/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dacestub_nested_loop_test.dir/tools/dacestub.cpp.o -c /Users/benediktschesch/MyEnv/lib/python3.7/site-packages/dace/codegen/tools/dacestub.cpp

CMakeFiles/dacestub_nested_loop_test.dir/tools/dacestub.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dacestub_nested_loop_test.dir/tools/dacestub.cpp.i"
	/usr/local/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/benediktschesch/MyEnv/lib/python3.7/site-packages/dace/codegen/tools/dacestub.cpp > CMakeFiles/dacestub_nested_loop_test.dir/tools/dacestub.cpp.i

CMakeFiles/dacestub_nested_loop_test.dir/tools/dacestub.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dacestub_nested_loop_test.dir/tools/dacestub.cpp.s"
	/usr/local/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/benediktschesch/MyEnv/lib/python3.7/site-packages/dace/codegen/tools/dacestub.cpp -o CMakeFiles/dacestub_nested_loop_test.dir/tools/dacestub.cpp.s

# Object files for target dacestub_nested_loop_test
dacestub_nested_loop_test_OBJECTS = \
"CMakeFiles/dacestub_nested_loop_test.dir/tools/dacestub.cpp.o"

# External object files for target dacestub_nested_loop_test
dacestub_nested_loop_test_EXTERNAL_OBJECTS =

libdacestub_nested_loop_test.dylib: CMakeFiles/dacestub_nested_loop_test.dir/tools/dacestub.cpp.o
libdacestub_nested_loop_test.dylib: CMakeFiles/dacestub_nested_loop_test.dir/build.make
libdacestub_nested_loop_test.dylib: CMakeFiles/dacestub_nested_loop_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/nested_loop_test/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libdacestub_nested_loop_test.dylib"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dacestub_nested_loop_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dacestub_nested_loop_test.dir/build: libdacestub_nested_loop_test.dylib

.PHONY : CMakeFiles/dacestub_nested_loop_test.dir/build

CMakeFiles/dacestub_nested_loop_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dacestub_nested_loop_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dacestub_nested_loop_test.dir/clean

CMakeFiles/dacestub_nested_loop_test.dir/depend:
	cd "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/nested_loop_test/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/benediktschesch/MyEnv/lib/python3.7/site-packages/dace/codegen /Users/benediktschesch/MyEnv/lib/python3.7/site-packages/dace/codegen "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/nested_loop_test/build" "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/nested_loop_test/build" "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/nested_loop_test/build/CMakeFiles/dacestub_nested_loop_test.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/dacestub_nested_loop_test.dir/depend

