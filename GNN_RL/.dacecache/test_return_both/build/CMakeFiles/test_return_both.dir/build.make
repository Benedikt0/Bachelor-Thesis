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
CMAKE_BINARY_DIR = "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/test_return_both/build"

# Include any dependencies generated for this target.
include CMakeFiles/test_return_both.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test_return_both.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_return_both.dir/flags.make

CMakeFiles/test_return_both.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/test_return_both/src/cpu/test_return_both.cpp.o: CMakeFiles/test_return_both.dir/flags.make
CMakeFiles/test_return_both.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/test_return_both/src/cpu/test_return_both.cpp.o: /Users/benediktschesch/OneDrive\ -\ ETH\ Zurich/MyEnv/GNN_RL/.dacecache/test_return_both/src/cpu/test_return_both.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/test_return_both/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_return_both.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/test_return_both/src/cpu/test_return_both.cpp.o"
	/usr/local/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_return_both.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/test_return_both/src/cpu/test_return_both.cpp.o -c "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/test_return_both/src/cpu/test_return_both.cpp"

CMakeFiles/test_return_both.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/test_return_both/src/cpu/test_return_both.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_return_both.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/test_return_both/src/cpu/test_return_both.cpp.i"
	/usr/local/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/test_return_both/src/cpu/test_return_both.cpp" > CMakeFiles/test_return_both.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/test_return_both/src/cpu/test_return_both.cpp.i

CMakeFiles/test_return_both.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/test_return_both/src/cpu/test_return_both.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_return_both.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/test_return_both/src/cpu/test_return_both.cpp.s"
	/usr/local/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/test_return_both/src/cpu/test_return_both.cpp" -o CMakeFiles/test_return_both.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/test_return_both/src/cpu/test_return_both.cpp.s

# Object files for target test_return_both
test_return_both_OBJECTS = \
"CMakeFiles/test_return_both.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/test_return_both/src/cpu/test_return_both.cpp.o"

# External object files for target test_return_both
test_return_both_EXTERNAL_OBJECTS =

libtest_return_both.dylib: CMakeFiles/test_return_both.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/test_return_both/src/cpu/test_return_both.cpp.o
libtest_return_both.dylib: CMakeFiles/test_return_both.dir/build.make
libtest_return_both.dylib: CMakeFiles/test_return_both.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/test_return_both/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libtest_return_both.dylib"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_return_both.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_return_both.dir/build: libtest_return_both.dylib

.PHONY : CMakeFiles/test_return_both.dir/build

CMakeFiles/test_return_both.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_return_both.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_return_both.dir/clean

CMakeFiles/test_return_both.dir/depend:
	cd "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/test_return_both/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/benediktschesch/MyEnv/lib/python3.7/site-packages/dace/codegen /Users/benediktschesch/MyEnv/lib/python3.7/site-packages/dace/codegen "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/test_return_both/build" "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/test_return_both/build" "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/test_return_both/build/CMakeFiles/test_return_both.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/test_return_both.dir/depend

