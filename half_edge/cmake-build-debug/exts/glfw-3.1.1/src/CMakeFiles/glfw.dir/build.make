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
include exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/depend.make

# Include the progress variables for this target.
include exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/progress.make

# Include the compile flags for this target's objects.
include exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/flags.make

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/context.c.o: exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/flags.make
exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/context.c.o: ../exts/glfw-3.1.1/src/context.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/context.c.o"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/context.c.o   -c /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/context.c

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/context.c.i"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/context.c > CMakeFiles/glfw.dir/context.c.i

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/context.c.s"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/context.c -o CMakeFiles/glfw.dir/context.c.s

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/init.c.o: exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/flags.make
exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/init.c.o: ../exts/glfw-3.1.1/src/init.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/init.c.o"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/init.c.o   -c /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/init.c

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/init.c.i"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/init.c > CMakeFiles/glfw.dir/init.c.i

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/init.c.s"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/init.c -o CMakeFiles/glfw.dir/init.c.s

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/input.c.o: exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/flags.make
exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/input.c.o: ../exts/glfw-3.1.1/src/input.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/input.c.o"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/input.c.o   -c /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/input.c

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/input.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/input.c.i"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/input.c > CMakeFiles/glfw.dir/input.c.i

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/input.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/input.c.s"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/input.c -o CMakeFiles/glfw.dir/input.c.s

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/monitor.c.o: exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/flags.make
exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/monitor.c.o: ../exts/glfw-3.1.1/src/monitor.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/monitor.c.o"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/monitor.c.o   -c /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/monitor.c

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/monitor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/monitor.c.i"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/monitor.c > CMakeFiles/glfw.dir/monitor.c.i

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/monitor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/monitor.c.s"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/monitor.c -o CMakeFiles/glfw.dir/monitor.c.s

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/window.c.o: exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/flags.make
exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/window.c.o: ../exts/glfw-3.1.1/src/window.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/window.c.o"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/window.c.o   -c /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/window.c

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/window.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/window.c.i"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/window.c > CMakeFiles/glfw.dir/window.c.i

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/window.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/window.c.s"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/window.c -o CMakeFiles/glfw.dir/window.c.s

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/x11_init.c.o: exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/flags.make
exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/x11_init.c.o: ../exts/glfw-3.1.1/src/x11_init.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/x11_init.c.o"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/x11_init.c.o   -c /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/x11_init.c

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/x11_init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/x11_init.c.i"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/x11_init.c > CMakeFiles/glfw.dir/x11_init.c.i

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/x11_init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/x11_init.c.s"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/x11_init.c -o CMakeFiles/glfw.dir/x11_init.c.s

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/x11_monitor.c.o: exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/flags.make
exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/x11_monitor.c.o: ../exts/glfw-3.1.1/src/x11_monitor.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/x11_monitor.c.o"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/x11_monitor.c.o   -c /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/x11_monitor.c

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/x11_monitor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/x11_monitor.c.i"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/x11_monitor.c > CMakeFiles/glfw.dir/x11_monitor.c.i

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/x11_monitor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/x11_monitor.c.s"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/x11_monitor.c -o CMakeFiles/glfw.dir/x11_monitor.c.s

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/x11_window.c.o: exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/flags.make
exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/x11_window.c.o: ../exts/glfw-3.1.1/src/x11_window.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/x11_window.c.o"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/x11_window.c.o   -c /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/x11_window.c

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/x11_window.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/x11_window.c.i"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/x11_window.c > CMakeFiles/glfw.dir/x11_window.c.i

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/x11_window.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/x11_window.c.s"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/x11_window.c -o CMakeFiles/glfw.dir/x11_window.c.s

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/xkb_unicode.c.o: exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/flags.make
exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/xkb_unicode.c.o: ../exts/glfw-3.1.1/src/xkb_unicode.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/xkb_unicode.c.o"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/xkb_unicode.c.o   -c /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/xkb_unicode.c

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/xkb_unicode.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/xkb_unicode.c.i"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/xkb_unicode.c > CMakeFiles/glfw.dir/xkb_unicode.c.i

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/xkb_unicode.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/xkb_unicode.c.s"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/xkb_unicode.c -o CMakeFiles/glfw.dir/xkb_unicode.c.s

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/linux_joystick.c.o: exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/flags.make
exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/linux_joystick.c.o: ../exts/glfw-3.1.1/src/linux_joystick.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/linux_joystick.c.o"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/linux_joystick.c.o   -c /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/linux_joystick.c

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/linux_joystick.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/linux_joystick.c.i"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/linux_joystick.c > CMakeFiles/glfw.dir/linux_joystick.c.i

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/linux_joystick.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/linux_joystick.c.s"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/linux_joystick.c -o CMakeFiles/glfw.dir/linux_joystick.c.s

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/posix_time.c.o: exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/flags.make
exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/posix_time.c.o: ../exts/glfw-3.1.1/src/posix_time.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/posix_time.c.o"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/posix_time.c.o   -c /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/posix_time.c

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/posix_time.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/posix_time.c.i"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/posix_time.c > CMakeFiles/glfw.dir/posix_time.c.i

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/posix_time.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/posix_time.c.s"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/posix_time.c -o CMakeFiles/glfw.dir/posix_time.c.s

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/posix_tls.c.o: exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/flags.make
exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/posix_tls.c.o: ../exts/glfw-3.1.1/src/posix_tls.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/posix_tls.c.o"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/posix_tls.c.o   -c /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/posix_tls.c

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/posix_tls.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/posix_tls.c.i"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/posix_tls.c > CMakeFiles/glfw.dir/posix_tls.c.i

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/posix_tls.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/posix_tls.c.s"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/posix_tls.c -o CMakeFiles/glfw.dir/posix_tls.c.s

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/glx_context.c.o: exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/flags.make
exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/glx_context.c.o: ../exts/glfw-3.1.1/src/glx_context.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/glx_context.c.o"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/glx_context.c.o   -c /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/glx_context.c

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/glx_context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/glx_context.c.i"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/glx_context.c > CMakeFiles/glfw.dir/glx_context.c.i

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/glx_context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/glx_context.c.s"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src/glx_context.c -o CMakeFiles/glfw.dir/glx_context.c.s

# Object files for target glfw
glfw_OBJECTS = \
"CMakeFiles/glfw.dir/context.c.o" \
"CMakeFiles/glfw.dir/init.c.o" \
"CMakeFiles/glfw.dir/input.c.o" \
"CMakeFiles/glfw.dir/monitor.c.o" \
"CMakeFiles/glfw.dir/window.c.o" \
"CMakeFiles/glfw.dir/x11_init.c.o" \
"CMakeFiles/glfw.dir/x11_monitor.c.o" \
"CMakeFiles/glfw.dir/x11_window.c.o" \
"CMakeFiles/glfw.dir/xkb_unicode.c.o" \
"CMakeFiles/glfw.dir/linux_joystick.c.o" \
"CMakeFiles/glfw.dir/posix_time.c.o" \
"CMakeFiles/glfw.dir/posix_tls.c.o" \
"CMakeFiles/glfw.dir/glx_context.c.o"

# External object files for target glfw
glfw_EXTERNAL_OBJECTS =

exts/glfw-3.1.1/src/libglfw3.a: exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/context.c.o
exts/glfw-3.1.1/src/libglfw3.a: exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/init.c.o
exts/glfw-3.1.1/src/libglfw3.a: exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/input.c.o
exts/glfw-3.1.1/src/libglfw3.a: exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/monitor.c.o
exts/glfw-3.1.1/src/libglfw3.a: exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/window.c.o
exts/glfw-3.1.1/src/libglfw3.a: exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/x11_init.c.o
exts/glfw-3.1.1/src/libglfw3.a: exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/x11_monitor.c.o
exts/glfw-3.1.1/src/libglfw3.a: exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/x11_window.c.o
exts/glfw-3.1.1/src/libglfw3.a: exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/xkb_unicode.c.o
exts/glfw-3.1.1/src/libglfw3.a: exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/linux_joystick.c.o
exts/glfw-3.1.1/src/libglfw3.a: exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/posix_time.c.o
exts/glfw-3.1.1/src/libglfw3.a: exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/posix_tls.c.o
exts/glfw-3.1.1/src/libglfw3.a: exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/glx_context.c.o
exts/glfw-3.1.1/src/libglfw3.a: exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/build.make
exts/glfw-3.1.1/src/libglfw3.a: exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking C static library libglfw3.a"
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && $(CMAKE_COMMAND) -P CMakeFiles/glfw.dir/cmake_clean_target.cmake
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/glfw.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/build: exts/glfw-3.1.1/src/libglfw3.a

.PHONY : exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/build

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/clean:
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src && $(CMAKE_COMMAND) -P CMakeFiles/glfw.dir/cmake_clean.cmake
.PHONY : exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/clean

exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/depend:
	cd /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/exts/glfw-3.1.1/src /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src /home/fanus/Documents/Projects/Git/axefor-5/S0017D/Half-Edge/cmake-build-debug/exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : exts/glfw-3.1.1/src/CMakeFiles/glfw.dir/depend

