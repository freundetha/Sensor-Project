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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/gupta/Desktop/Untitled Folder/String2Values/Linux String2Values"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/gupta/Desktop/Untitled Folder/String2Values/Linux String2Values/build"

# Include any dependencies generated for this target.
include CMakeFiles/sensorNode.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sensorNode.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sensorNode.dir/flags.make

CMakeFiles/sensorNode.dir/main.cpp.o: CMakeFiles/sensorNode.dir/flags.make
CMakeFiles/sensorNode.dir/main.cpp.o: ../main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/gupta/Desktop/Untitled Folder/String2Values/Linux String2Values/build/CMakeFiles" $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/sensorNode.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sensorNode.dir/main.cpp.o -c "/home/gupta/Desktop/Untitled Folder/String2Values/Linux String2Values/main.cpp"

CMakeFiles/sensorNode.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sensorNode.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/gupta/Desktop/Untitled Folder/String2Values/Linux String2Values/main.cpp" > CMakeFiles/sensorNode.dir/main.cpp.i

CMakeFiles/sensorNode.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sensorNode.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/gupta/Desktop/Untitled Folder/String2Values/Linux String2Values/main.cpp" -o CMakeFiles/sensorNode.dir/main.cpp.s

CMakeFiles/sensorNode.dir/main.cpp.o.requires:
.PHONY : CMakeFiles/sensorNode.dir/main.cpp.o.requires

CMakeFiles/sensorNode.dir/main.cpp.o.provides: CMakeFiles/sensorNode.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/sensorNode.dir/build.make CMakeFiles/sensorNode.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/sensorNode.dir/main.cpp.o.provides

CMakeFiles/sensorNode.dir/main.cpp.o.provides.build: CMakeFiles/sensorNode.dir/main.cpp.o

CMakeFiles/sensorNode.dir/LINKSSensorNode.cpp.o: CMakeFiles/sensorNode.dir/flags.make
CMakeFiles/sensorNode.dir/LINKSSensorNode.cpp.o: ../LINKSSensorNode.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/gupta/Desktop/Untitled Folder/String2Values/Linux String2Values/build/CMakeFiles" $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/sensorNode.dir/LINKSSensorNode.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sensorNode.dir/LINKSSensorNode.cpp.o -c "/home/gupta/Desktop/Untitled Folder/String2Values/Linux String2Values/LINKSSensorNode.cpp"

CMakeFiles/sensorNode.dir/LINKSSensorNode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sensorNode.dir/LINKSSensorNode.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/gupta/Desktop/Untitled Folder/String2Values/Linux String2Values/LINKSSensorNode.cpp" > CMakeFiles/sensorNode.dir/LINKSSensorNode.cpp.i

CMakeFiles/sensorNode.dir/LINKSSensorNode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sensorNode.dir/LINKSSensorNode.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/gupta/Desktop/Untitled Folder/String2Values/Linux String2Values/LINKSSensorNode.cpp" -o CMakeFiles/sensorNode.dir/LINKSSensorNode.cpp.s

CMakeFiles/sensorNode.dir/LINKSSensorNode.cpp.o.requires:
.PHONY : CMakeFiles/sensorNode.dir/LINKSSensorNode.cpp.o.requires

CMakeFiles/sensorNode.dir/LINKSSensorNode.cpp.o.provides: CMakeFiles/sensorNode.dir/LINKSSensorNode.cpp.o.requires
	$(MAKE) -f CMakeFiles/sensorNode.dir/build.make CMakeFiles/sensorNode.dir/LINKSSensorNode.cpp.o.provides.build
.PHONY : CMakeFiles/sensorNode.dir/LINKSSensorNode.cpp.o.provides

CMakeFiles/sensorNode.dir/LINKSSensorNode.cpp.o.provides.build: CMakeFiles/sensorNode.dir/LINKSSensorNode.cpp.o

CMakeFiles/sensorNode.dir/serialib.cpp.o: CMakeFiles/sensorNode.dir/flags.make
CMakeFiles/sensorNode.dir/serialib.cpp.o: ../serialib.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/gupta/Desktop/Untitled Folder/String2Values/Linux String2Values/build/CMakeFiles" $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/sensorNode.dir/serialib.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sensorNode.dir/serialib.cpp.o -c "/home/gupta/Desktop/Untitled Folder/String2Values/Linux String2Values/serialib.cpp"

CMakeFiles/sensorNode.dir/serialib.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sensorNode.dir/serialib.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/gupta/Desktop/Untitled Folder/String2Values/Linux String2Values/serialib.cpp" > CMakeFiles/sensorNode.dir/serialib.cpp.i

CMakeFiles/sensorNode.dir/serialib.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sensorNode.dir/serialib.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/gupta/Desktop/Untitled Folder/String2Values/Linux String2Values/serialib.cpp" -o CMakeFiles/sensorNode.dir/serialib.cpp.s

CMakeFiles/sensorNode.dir/serialib.cpp.o.requires:
.PHONY : CMakeFiles/sensorNode.dir/serialib.cpp.o.requires

CMakeFiles/sensorNode.dir/serialib.cpp.o.provides: CMakeFiles/sensorNode.dir/serialib.cpp.o.requires
	$(MAKE) -f CMakeFiles/sensorNode.dir/build.make CMakeFiles/sensorNode.dir/serialib.cpp.o.provides.build
.PHONY : CMakeFiles/sensorNode.dir/serialib.cpp.o.provides

CMakeFiles/sensorNode.dir/serialib.cpp.o.provides.build: CMakeFiles/sensorNode.dir/serialib.cpp.o

# Object files for target sensorNode
sensorNode_OBJECTS = \
"CMakeFiles/sensorNode.dir/main.cpp.o" \
"CMakeFiles/sensorNode.dir/LINKSSensorNode.cpp.o" \
"CMakeFiles/sensorNode.dir/serialib.cpp.o"

# External object files for target sensorNode
sensorNode_EXTERNAL_OBJECTS =

sensorNode: CMakeFiles/sensorNode.dir/main.cpp.o
sensorNode: CMakeFiles/sensorNode.dir/LINKSSensorNode.cpp.o
sensorNode: CMakeFiles/sensorNode.dir/serialib.cpp.o
sensorNode: CMakeFiles/sensorNode.dir/build.make
sensorNode: CMakeFiles/sensorNode.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable sensorNode"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sensorNode.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sensorNode.dir/build: sensorNode
.PHONY : CMakeFiles/sensorNode.dir/build

CMakeFiles/sensorNode.dir/requires: CMakeFiles/sensorNode.dir/main.cpp.o.requires
CMakeFiles/sensorNode.dir/requires: CMakeFiles/sensorNode.dir/LINKSSensorNode.cpp.o.requires
CMakeFiles/sensorNode.dir/requires: CMakeFiles/sensorNode.dir/serialib.cpp.o.requires
.PHONY : CMakeFiles/sensorNode.dir/requires

CMakeFiles/sensorNode.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sensorNode.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sensorNode.dir/clean

CMakeFiles/sensorNode.dir/depend:
	cd "/home/gupta/Desktop/Untitled Folder/String2Values/Linux String2Values/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/gupta/Desktop/Untitled Folder/String2Values/Linux String2Values" "/home/gupta/Desktop/Untitled Folder/String2Values/Linux String2Values" "/home/gupta/Desktop/Untitled Folder/String2Values/Linux String2Values/build" "/home/gupta/Desktop/Untitled Folder/String2Values/Linux String2Values/build" "/home/gupta/Desktop/Untitled Folder/String2Values/Linux String2Values/build/CMakeFiles/sensorNode.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/sensorNode.dir/depend

