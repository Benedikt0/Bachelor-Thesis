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
CMAKE_BINARY_DIR = "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/sredtest/build"

# Include any dependencies generated for this target.
include CMakeFiles/sredtest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sredtest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sredtest.dir/flags.make

CMakeFiles/sredtest.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/sredtest/src/cpu/sredtest.cpp.o: CMakeFiles/sredtest.dir/flags.make
CMakeFiles/sredtest.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/sredtest/src/cpu/sredtest.cpp.o: /Users/benediktschesch/OneDrive\ -\ ETH\ Zurich/MyEnv/GNN_RL/.dacecache/sredtest/src/cpu/sredtest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/sredtest/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sredtest.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/sredtest/src/cpu/sredtest.cpp.o"
	/usr/local/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sredtest.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/sredtest/src/cpu/sredtest.cpp.o -c "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/sredtest/src/cpu/sredtest.cpp"

CMakeFiles/sredtest.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/sredtest/src/cpu/sredtest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sredtest.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/sredtest/src/cpu/sredtest.cpp.i"
	/usr/local/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/sredtest/src/cpu/sredtest.cpp" > CMakeFiles/sredtest.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/sredtest/src/cpu/sredtest.cpp.i

CMakeFiles/sredtest.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/sredtest/src/cpu/sredtest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sredtest.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/sredtest/src/cpu/sredtest.cpp.s"
	/usr/local/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/sredtest/src/cpu/sredtest.cpp" -o CMakeFiles/sredtest.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/sredtest/src/cpu/sredtest.cpp.s

# Object files for target sredtest
sredtest_OBJECTS = \
"CMakeFiles/sredtest.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/sredtest/src/cpu/sredtest.cpp.o"

# External object files for target sredtest
sredtest_EXTERNAL_OBJECTS =

libsredtest.dylib: CMakeFiles/sredtest.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/sredtest/src/cpu/sredtest.cpp.o
libsredtest.dylib: CMakeFiles/sredtest.dir/build.make
libsredtest.dylib: CMakeFiles/sredtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/sredtest/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libsredtest.dylib"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sredtest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sredtest.dir/build: libsredtest.dylib

.PHONY : CMakeFiles/sredtest.dir/build

CMakeFiles/sredtest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sredtest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sredtest.dir/clean

CMakeFiles/sredtest.dir/depend:
	cd "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/sredtest/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/benediktschesch/MyEnv/lib/python3.7/site-packages/dace/codegen /Users/benediktschesch/MyEnv/lib/python3.7/site-packages/dace/codegen "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/sredtest/build" "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/sredtest/build" "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/sredtest/build/CMakeFiles/sredtest.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/sredtest.dir/depend

