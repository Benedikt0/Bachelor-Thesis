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
CMAKE_BINARY_DIR = "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/mapreduce_test_4/build"

# Include any dependencies generated for this target.
include CMakeFiles/mapreduce_test_4.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mapreduce_test_4.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mapreduce_test_4.dir/flags.make

CMakeFiles/mapreduce_test_4.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/mapreduce_test_4/src/cpu/mapreduce_test_4.cpp.o: CMakeFiles/mapreduce_test_4.dir/flags.make
CMakeFiles/mapreduce_test_4.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/mapreduce_test_4/src/cpu/mapreduce_test_4.cpp.o: /Users/benediktschesch/OneDrive\ -\ ETH\ Zurich/MyEnv/GNN_RL/.dacecache/mapreduce_test_4/src/cpu/mapreduce_test_4.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/mapreduce_test_4/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/mapreduce_test_4.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/mapreduce_test_4/src/cpu/mapreduce_test_4.cpp.o"
	/usr/local/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mapreduce_test_4.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/mapreduce_test_4/src/cpu/mapreduce_test_4.cpp.o -c "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/mapreduce_test_4/src/cpu/mapreduce_test_4.cpp"

CMakeFiles/mapreduce_test_4.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/mapreduce_test_4/src/cpu/mapreduce_test_4.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mapreduce_test_4.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/mapreduce_test_4/src/cpu/mapreduce_test_4.cpp.i"
	/usr/local/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/mapreduce_test_4/src/cpu/mapreduce_test_4.cpp" > CMakeFiles/mapreduce_test_4.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/mapreduce_test_4/src/cpu/mapreduce_test_4.cpp.i

CMakeFiles/mapreduce_test_4.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/mapreduce_test_4/src/cpu/mapreduce_test_4.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mapreduce_test_4.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/mapreduce_test_4/src/cpu/mapreduce_test_4.cpp.s"
	/usr/local/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/mapreduce_test_4/src/cpu/mapreduce_test_4.cpp" -o CMakeFiles/mapreduce_test_4.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/mapreduce_test_4/src/cpu/mapreduce_test_4.cpp.s

# Object files for target mapreduce_test_4
mapreduce_test_4_OBJECTS = \
"CMakeFiles/mapreduce_test_4.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/mapreduce_test_4/src/cpu/mapreduce_test_4.cpp.o"

# External object files for target mapreduce_test_4
mapreduce_test_4_EXTERNAL_OBJECTS =

libmapreduce_test_4.dylib: CMakeFiles/mapreduce_test_4.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/mapreduce_test_4/src/cpu/mapreduce_test_4.cpp.o
libmapreduce_test_4.dylib: CMakeFiles/mapreduce_test_4.dir/build.make
libmapreduce_test_4.dylib: CMakeFiles/mapreduce_test_4.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/mapreduce_test_4/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libmapreduce_test_4.dylib"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mapreduce_test_4.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mapreduce_test_4.dir/build: libmapreduce_test_4.dylib

.PHONY : CMakeFiles/mapreduce_test_4.dir/build

CMakeFiles/mapreduce_test_4.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mapreduce_test_4.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mapreduce_test_4.dir/clean

CMakeFiles/mapreduce_test_4.dir/depend:
	cd "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/mapreduce_test_4/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/benediktschesch/MyEnv/lib/python3.7/site-packages/dace/codegen /Users/benediktschesch/MyEnv/lib/python3.7/site-packages/dace/codegen "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/mapreduce_test_4/build" "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/mapreduce_test_4/build" "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/mapreduce_test_4/build/CMakeFiles/mapreduce_test_4.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/mapreduce_test_4.dir/depend

