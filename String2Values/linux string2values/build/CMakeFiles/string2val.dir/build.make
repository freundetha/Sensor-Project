# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = "/home/james/Dropbox/Sensor Nodes/Linux String2Values"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/james/Dropbox/Sensor Nodes/Linux String2Values/build"

# Include any dependencies generated for this target.
include CMakeFiles/string2val.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/string2val.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/string2val.dir/flags.make

CMakeFiles/string2val.dir/main.cpp.o: CMakeFiles/string2val.dir/flags.make
CMakeFiles/string2val.dir/main.cpp.o: ../main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/james/Dropbox/Sensor Nodes/Linux String2Values/build/CMakeFiles" $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/string2val.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/string2val.dir/main.cpp.o -c "/home/james/Dropbox/Sensor Nodes/Linux String2Values/main.cpp"

CMakeFiles/string2val.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/string2val.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/james/Dropbox/Sensor Nodes/Linux String2Values/main.cpp" > CMakeFiles/string2val.dir/main.cpp.i

CMakeFiles/string2val.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/string2val.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/james/Dropbox/Sensor Nodes/Linux String2Values/main.cpp" -o CMakeFiles/string2val.dir/main.cpp.s

CMakeFiles/string2val.dir/main.cpp.o.requires:
.PHONY : CMakeFiles/string2val.dir/main.cpp.o.requires

CMakeFiles/string2val.dir/main.cpp.o.provides: CMakeFiles/string2val.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/string2val.dir/build.make CMakeFiles/string2val.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/string2val.dir/main.cpp.o.provides

CMakeFiles/string2val.dir/main.cpp.o.provides.build: CMakeFiles/string2val.dir/main.cpp.o

CMakeFiles/string2val.dir/LINKSSensorNode.cpp.o: CMakeFiles/string2val.dir/flags.make
CMakeFiles/string2val.dir/LINKSSensorNode.cpp.o: ../LINKSSensorNode.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/james/Dropbox/Sensor Nodes/Linux String2Values/build/CMakeFiles" $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/string2val.dir/LINKSSensorNode.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/string2val.dir/LINKSSensorNode.cpp.o -c "/home/james/Dropbox/Sensor Nodes/Linux String2Values/LINKSSensorNode.cpp"

CMakeFiles/string2val.dir/LINKSSensorNode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/string2val.dir/LINKSSensorNode.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/james/Dropbox/Sensor Nodes/Linux String2Values/LINKSSensorNode.cpp" > CMakeFiles/string2val.dir/LINKSSensorNode.cpp.i

CMakeFiles/string2val.dir/LINKSSensorNode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/string2val.dir/LINKSSensorNode.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/james/Dropbox/Sensor Nodes/Linux String2Values/LINKSSensorNode.cpp" -o CMakeFiles/string2val.dir/LINKSSensorNode.cpp.s

CMakeFiles/string2val.dir/LINKSSensorNode.cpp.o.requires:
.PHONY : CMakeFiles/string2val.dir/LINKSSensorNode.cpp.o.requires

CMakeFiles/string2val.dir/LINKSSensorNode.cpp.o.provides: CMakeFiles/string2val.dir/LINKSSensorNode.cpp.o.requires
	$(MAKE) -f CMakeFiles/string2val.dir/build.make CMakeFiles/string2val.dir/LINKSSensorNode.cpp.o.provides.build
.PHONY : CMakeFiles/string2val.dir/LINKSSensorNode.cpp.o.provides

CMakeFiles/string2val.dir/LINKSSensorNode.cpp.o.provides.build: CMakeFiles/string2val.dir/LINKSSensorNode.cpp.o

# Object files for target string2val
string2val_OBJECTS = \
"CMakeFiles/string2val.dir/main.cpp.o" \
"CMakeFiles/string2val.dir/LINKSSensorNode.cpp.o"

# External object files for target string2val
string2val_EXTERNAL_OBJECTS =

string2val: CMakeFiles/string2val.dir/main.cpp.o
string2val: CMakeFiles/string2val.dir/LINKSSensorNode.cpp.o
string2val: CMakeFiles/string2val.dir/build.make
string2val: CMakeFiles/string2val.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable string2val"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/string2val.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/string2val.dir/build: string2val
.PHONY : CMakeFiles/string2val.dir/build

CMakeFiles/string2val.dir/requires: CMakeFiles/string2val.dir/main.cpp.o.requires
CMakeFiles/string2val.dir/requires: CMakeFiles/string2val.dir/LINKSSensorNode.cpp.o.requires
.PHONY : CMakeFiles/string2val.dir/requires

CMakeFiles/string2val.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/string2val.dir/cmake_clean.cmake
.PHONY : CMakeFiles/string2val.dir/clean

CMakeFiles/string2val.dir/depend:
	cd "/home/james/Dropbox/Sensor Nodes/Linux String2Values/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/james/Dropbox/Sensor Nodes/Linux String2Values" "/home/james/Dropbox/Sensor Nodes/Linux String2Values" "/home/james/Dropbox/Sensor Nodes/Linux String2Values/build" "/home/james/Dropbox/Sensor Nodes/Linux String2Values/build" "/home/james/Dropbox/Sensor Nodes/Linux String2Values/build/CMakeFiles/string2val.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/string2val.dir/depend

