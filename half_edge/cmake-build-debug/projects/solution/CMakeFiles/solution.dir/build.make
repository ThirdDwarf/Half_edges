# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /snap/clion/39/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/39/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug

# Include any dependencies generated for this target.
include projects/solution/CMakeFiles/solution.dir/depend.make

# Include the progress variables for this target.
include projects/solution/CMakeFiles/solution.dir/progress.make

# Include the compile flags for this target's objects.
include projects/solution/CMakeFiles/solution.dir/flags.make

projects/solution/CMakeFiles/solution.dir/code/exampleapp.cc.o: projects/solution/CMakeFiles/solution.dir/flags.make
projects/solution/CMakeFiles/solution.dir/code/exampleapp.cc.o: ../projects/solution/code/exampleapp.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object projects/solution/CMakeFiles/solution.dir/code/exampleapp.cc.o"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/projects/solution && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/solution.dir/code/exampleapp.cc.o -c /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/projects/solution/code/exampleapp.cc

projects/solution/CMakeFiles/solution.dir/code/exampleapp.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/solution.dir/code/exampleapp.cc.i"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/projects/solution && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/projects/solution/code/exampleapp.cc > CMakeFiles/solution.dir/code/exampleapp.cc.i

projects/solution/CMakeFiles/solution.dir/code/exampleapp.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/solution.dir/code/exampleapp.cc.s"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/projects/solution && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/projects/solution/code/exampleapp.cc -o CMakeFiles/solution.dir/code/exampleapp.cc.s

projects/solution/CMakeFiles/solution.dir/code/main.cc.o: projects/solution/CMakeFiles/solution.dir/flags.make
projects/solution/CMakeFiles/solution.dir/code/main.cc.o: ../projects/solution/code/main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object projects/solution/CMakeFiles/solution.dir/code/main.cc.o"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/projects/solution && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/solution.dir/code/main.cc.o -c /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/projects/solution/code/main.cc

projects/solution/CMakeFiles/solution.dir/code/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/solution.dir/code/main.cc.i"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/projects/solution && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/projects/solution/code/main.cc > CMakeFiles/solution.dir/code/main.cc.i

projects/solution/CMakeFiles/solution.dir/code/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/solution.dir/code/main.cc.s"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/projects/solution && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/projects/solution/code/main.cc -o CMakeFiles/solution.dir/code/main.cc.s

projects/solution/CMakeFiles/solution.dir/code/halfEdgeMeshes.cpp.o: projects/solution/CMakeFiles/solution.dir/flags.make
projects/solution/CMakeFiles/solution.dir/code/halfEdgeMeshes.cpp.o: ../projects/solution/code/halfEdgeMeshes.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object projects/solution/CMakeFiles/solution.dir/code/halfEdgeMeshes.cpp.o"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/projects/solution && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/solution.dir/code/halfEdgeMeshes.cpp.o -c /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/projects/solution/code/halfEdgeMeshes.cpp

projects/solution/CMakeFiles/solution.dir/code/halfEdgeMeshes.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/solution.dir/code/halfEdgeMeshes.cpp.i"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/projects/solution && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/projects/solution/code/halfEdgeMeshes.cpp > CMakeFiles/solution.dir/code/halfEdgeMeshes.cpp.i

projects/solution/CMakeFiles/solution.dir/code/halfEdgeMeshes.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/solution.dir/code/halfEdgeMeshes.cpp.s"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/projects/solution && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/projects/solution/code/halfEdgeMeshes.cpp -o CMakeFiles/solution.dir/code/halfEdgeMeshes.cpp.s

# Object files for target solution
solution_OBJECTS = \
"CMakeFiles/solution.dir/code/exampleapp.cc.o" \
"CMakeFiles/solution.dir/code/main.cc.o" \
"CMakeFiles/solution.dir/code/halfEdgeMeshes.cpp.o"

# External object files for target solution
solution_EXTERNAL_OBJECTS =

../bin/solution: projects/solution/CMakeFiles/solution.dir/code/exampleapp.cc.o
../bin/solution: projects/solution/CMakeFiles/solution.dir/code/main.cc.o
../bin/solution: projects/solution/CMakeFiles/solution.dir/code/halfEdgeMeshes.cpp.o
../bin/solution: projects/solution/CMakeFiles/solution.dir/build.make
../bin/solution: engine/core/libcore.a
../bin/solution: engine/render/librender.a
../bin/solution: exts/glew/libglew.a
../bin/solution: exts/glfw-3.1.1/src/libglfw3.a
../bin/solution: exts/libimgui.a
../bin/solution: exts/libnanovg.a
../bin/solution: exts/libimgui.a
../bin/solution: exts/libnanovg.a
../bin/solution: projects/solution/CMakeFiles/solution.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ../../../bin/solution"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/projects/solution && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/solution.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
projects/solution/CMakeFiles/solution.dir/build: ../bin/solution

.PHONY : projects/solution/CMakeFiles/solution.dir/build

projects/solution/CMakeFiles/solution.dir/clean:
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/projects/solution && $(CMAKE_COMMAND) -P CMakeFiles/solution.dir/cmake_clean.cmake
.PHONY : projects/solution/CMakeFiles/solution.dir/clean

projects/solution/CMakeFiles/solution.dir/depend:
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/projects/solution /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/projects/solution /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/projects/solution/CMakeFiles/solution.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : projects/solution/CMakeFiles/solution.dir/depend

