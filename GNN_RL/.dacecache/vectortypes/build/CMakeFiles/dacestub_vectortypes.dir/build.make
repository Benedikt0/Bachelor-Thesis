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
CMAKE_BINARY_DIR = "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/vectortypes/build"

# Include any dependencies generated for this target.
include CMakeFiles/dacestub_vectortypes.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/dacestub_vectortypes.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dacestub_vectortypes.dir/flags.make

CMakeFiles/dacestub_vectortypes.dir/tools/dacestub.cpp.o: CMakeFiles/dacestub_vectortypes.dir/flags.make
CMakeFiles/dacestub_vectortypes.dir/tools/dacestub.cpp.o: /Users/benediktschesch/MyEnv/lib/python3.7/site-packages/dace/codegen/tools/dacestub.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/vectortypes/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/dacestub_vectortypes.dir/tools/dacestub.cpp.o"
	/usr/local/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dacestub_vectortypes.dir/tools/dacestub.cpp.o -c /Users/benediktschesch/MyEnv/lib/python3.7/site-packages/dace/codegen/tools/dacestub.cpp

CMakeFiles/dacestub_vectortypes.dir/tools/dacestub.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dacestub_vectortypes.dir/tools/dacestub.cpp.i"
	/usr/local/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/benediktschesch/MyEnv/lib/python3.7/site-packages/dace/codegen/tools/dacestub.cpp > CMakeFiles/dacestub_vectortypes.dir/tools/dacestub.cpp.i

CMakeFiles/dacestub_vectortypes.dir/tools/dacestub.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dacestub_vectortypes.dir/tools/dacestub.cpp.s"
	/usr/local/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/benediktschesch/MyEnv/lib/python3.7/site-packages/dace/codegen/tools/dacestub.cpp -o CMakeFiles/dacestub_vectortypes.dir/tools/dacestub.cpp.s

# Object files for target dacestub_vectortypes
dacestub_vectortypes_OBJECTS = \
"CMakeFiles/dacestub_vectortypes.dir/tools/dacestub.cpp.o"

# External object files for target dacestub_vectortypes
dacestub_vectortypes_EXTERNAL_OBJECTS =

libdacestub_vectortypes.dylib: CMakeFiles/dacestub_vectortypes.dir/tools/dacestub.cpp.o
libdacestub_vectortypes.dylib: CMakeFiles/dacestub_vectortypes.dir/build.make
libdacestub_vectortypes.dylib: CMakeFiles/dacestub_vectortypes.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/vectortypes/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libdacestub_vectortypes.dylib"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dacestub_vectortypes.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dacestub_vectortypes.dir/build: libdacestub_vectortypes.dylib

.PHONY : CMakeFiles/dacestub_vectortypes.dir/build

CMakeFiles/dacestub_vectortypes.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dacestub_vectortypes.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dacestub_vectortypes.dir/clean

CMakeFiles/dacestub_vectortypes.dir/depend:
	cd "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/vectortypes/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/benediktschesch/MyEnv/lib/python3.7/site-packages/dace/codegen /Users/benediktschesch/MyEnv/lib/python3.7/site-packages/dace/codegen "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/vectortypes/build" "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/vectortypes/build" "/Users/benediktschesch/OneDrive - ETH Zurich/MyEnv/GNN_RL/.dacecache/vectortypes/build/CMakeFiles/dacestub_vectortypes.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/dacestub_vectortypes.dir/depend
