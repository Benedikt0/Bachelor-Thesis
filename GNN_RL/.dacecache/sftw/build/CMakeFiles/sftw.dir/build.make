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
CMAKE_BINARY_DIR = "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/sftw/build"

# Include any dependencies generated for this target.
include CMakeFiles/sftw.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sftw.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sftw.dir/flags.make

CMakeFiles/sftw.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/sftw/src/cpu/sftw.cpp.o: CMakeFiles/sftw.dir/flags.make
CMakeFiles/sftw.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/sftw/src/cpu/sftw.cpp.o: /Users/benediktschesch/OneDrive\ -\ ETH\ Zurich/MyEnv/GNN_RL/.dacecache/sftw/src/cpu/sftw.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/sftw/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sftw.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/sftw/src/cpu/sftw.cpp.o"
	/usr/local/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sftw.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/sftw/src/cpu/sftw.cpp.o -c "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/sftw/src/cpu/sftw.cpp"

CMakeFiles/sftw.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/sftw/src/cpu/sftw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sftw.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/sftw/src/cpu/sftw.cpp.i"
	/usr/local/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/sftw/src/cpu/sftw.cpp" > CMakeFiles/sftw.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/sftw/src/cpu/sftw.cpp.i

CMakeFiles/sftw.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/sftw/src/cpu/sftw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sftw.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/sftw/src/cpu/sftw.cpp.s"
	/usr/local/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/sftw/src/cpu/sftw.cpp" -o CMakeFiles/sftw.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/sftw/src/cpu/sftw.cpp.s

# Object files for target sftw
sftw_OBJECTS = \
"CMakeFiles/sftw.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/sftw/src/cpu/sftw.cpp.o"

# External object files for target sftw
sftw_EXTERNAL_OBJECTS =

libsftw.dylib: CMakeFiles/sftw.dir/Users/benediktschesch/OneDrive_-_ETH_Zurich/MyEnv/GNN_RL/.dacecache/sftw/src/cpu/sftw.cpp.o
libsftw.dylib: CMakeFiles/sftw.dir/build.make
libsftw.dylib: CMakeFiles/sftw.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/sftw/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libsftw.dylib"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sftw.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sftw.dir/build: libsftw.dylib

.PHONY : CMakeFiles/sftw.dir/build

CMakeFiles/sftw.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sftw.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sftw.dir/clean

CMakeFiles/sftw.dir/depend:
	cd "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/sftw/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/benediktschesch/MyEnv/lib/python3.7/site-packages/dace/codegen /Users/benediktschesch/MyEnv/lib/python3.7/site-packages/dace/codegen "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/sftw/build" "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/sftw/build" "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/sftw/build/CMakeFiles/sftw.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/sftw.dir/depend

