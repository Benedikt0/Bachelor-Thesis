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
CMAKE_BINARY_DIR = "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/optest/build"

# Include any dependencies generated for this target.
include CMakeFiles/optest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/optest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/optest.dir/flags.make

CMakeFiles/optest.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/optest/src/cpu/optest.cpp.o: CMakeFiles/optest.dir/flags.make
CMakeFiles/optest.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/optest/src/cpu/optest.cpp.o: /Users/benediktschesch/OneDrive\ -\ ETH\ Zurich/MyEnv/GNN_RL/.dacecache/optest/src/cpu/optest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/optest/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/optest.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/optest/src/cpu/optest.cpp.o"
	/usr/local/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/optest.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/optest/src/cpu/optest.cpp.o -c "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/optest/src/cpu/optest.cpp"

CMakeFiles/optest.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/optest/src/cpu/optest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/optest.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/optest/src/cpu/optest.cpp.i"
	/usr/local/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/optest/src/cpu/optest.cpp" > CMakeFiles/optest.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/optest/src/cpu/optest.cpp.i

CMakeFiles/optest.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/optest/src/cpu/optest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/optest.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/optest/src/cpu/optest.cpp.s"
	/usr/local/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/optest/src/cpu/optest.cpp" -o CMakeFiles/optest.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/optest/src/cpu/optest.cpp.s

# Object files for target optest
optest_OBJECTS = \
"CMakeFiles/optest.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/optest/src/cpu/optest.cpp.o"

# External object files for target optest
optest_EXTERNAL_OBJECTS =

liboptest.dylib: CMakeFiles/optest.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/optest/src/cpu/optest.cpp.o
liboptest.dylib: CMakeFiles/optest.dir/build.make
liboptest.dylib: CMakeFiles/optest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/optest/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library liboptest.dylib"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/optest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/optest.dir/build: liboptest.dylib

.PHONY : CMakeFiles/optest.dir/build

CMakeFiles/optest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/optest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/optest.dir/clean

CMakeFiles/optest.dir/depend:
	cd "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/optest/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/benediktschesch/MyEnv/lib/python3.7/site-packages/dace/codegen /Users/benediktschesch/MyEnv/lib/python3.7/site-packages/dace/codegen "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/optest/build" "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/optest/build" "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/optest/build/CMakeFiles/optest.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/optest.dir/depend

