# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/neutron/Documents/tictactoe

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/neutron/Documents/tictactoe/build

# Include any dependencies generated for this target.
include CMakeFiles/tictactoe.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/tictactoe.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/tictactoe.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tictactoe.dir/flags.make

CMakeFiles/tictactoe.dir/src/main.c.o: CMakeFiles/tictactoe.dir/flags.make
CMakeFiles/tictactoe.dir/src/main.c.o: ../src/main.c
CMakeFiles/tictactoe.dir/src/main.c.o: CMakeFiles/tictactoe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/neutron/Documents/tictactoe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/tictactoe.dir/src/main.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/tictactoe.dir/src/main.c.o -MF CMakeFiles/tictactoe.dir/src/main.c.o.d -o CMakeFiles/tictactoe.dir/src/main.c.o -c /home/neutron/Documents/tictactoe/src/main.c

CMakeFiles/tictactoe.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tictactoe.dir/src/main.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/neutron/Documents/tictactoe/src/main.c > CMakeFiles/tictactoe.dir/src/main.c.i

CMakeFiles/tictactoe.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tictactoe.dir/src/main.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/neutron/Documents/tictactoe/src/main.c -o CMakeFiles/tictactoe.dir/src/main.c.s

CMakeFiles/tictactoe.dir/src/ntr/color.c.o: CMakeFiles/tictactoe.dir/flags.make
CMakeFiles/tictactoe.dir/src/ntr/color.c.o: ../src/ntr/color.c
CMakeFiles/tictactoe.dir/src/ntr/color.c.o: CMakeFiles/tictactoe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/neutron/Documents/tictactoe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/tictactoe.dir/src/ntr/color.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/tictactoe.dir/src/ntr/color.c.o -MF CMakeFiles/tictactoe.dir/src/ntr/color.c.o.d -o CMakeFiles/tictactoe.dir/src/ntr/color.c.o -c /home/neutron/Documents/tictactoe/src/ntr/color.c

CMakeFiles/tictactoe.dir/src/ntr/color.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tictactoe.dir/src/ntr/color.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/neutron/Documents/tictactoe/src/ntr/color.c > CMakeFiles/tictactoe.dir/src/ntr/color.c.i

CMakeFiles/tictactoe.dir/src/ntr/color.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tictactoe.dir/src/ntr/color.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/neutron/Documents/tictactoe/src/ntr/color.c -o CMakeFiles/tictactoe.dir/src/ntr/color.c.s

CMakeFiles/tictactoe.dir/src/ntr/errHandler.c.o: CMakeFiles/tictactoe.dir/flags.make
CMakeFiles/tictactoe.dir/src/ntr/errHandler.c.o: ../src/ntr/errHandler.c
CMakeFiles/tictactoe.dir/src/ntr/errHandler.c.o: CMakeFiles/tictactoe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/neutron/Documents/tictactoe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/tictactoe.dir/src/ntr/errHandler.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/tictactoe.dir/src/ntr/errHandler.c.o -MF CMakeFiles/tictactoe.dir/src/ntr/errHandler.c.o.d -o CMakeFiles/tictactoe.dir/src/ntr/errHandler.c.o -c /home/neutron/Documents/tictactoe/src/ntr/errHandler.c

CMakeFiles/tictactoe.dir/src/ntr/errHandler.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tictactoe.dir/src/ntr/errHandler.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/neutron/Documents/tictactoe/src/ntr/errHandler.c > CMakeFiles/tictactoe.dir/src/ntr/errHandler.c.i

CMakeFiles/tictactoe.dir/src/ntr/errHandler.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tictactoe.dir/src/ntr/errHandler.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/neutron/Documents/tictactoe/src/ntr/errHandler.c -o CMakeFiles/tictactoe.dir/src/ntr/errHandler.c.s

CMakeFiles/tictactoe.dir/src/ntr/intconver.c.o: CMakeFiles/tictactoe.dir/flags.make
CMakeFiles/tictactoe.dir/src/ntr/intconver.c.o: ../src/ntr/intconver.c
CMakeFiles/tictactoe.dir/src/ntr/intconver.c.o: CMakeFiles/tictactoe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/neutron/Documents/tictactoe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/tictactoe.dir/src/ntr/intconver.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/tictactoe.dir/src/ntr/intconver.c.o -MF CMakeFiles/tictactoe.dir/src/ntr/intconver.c.o.d -o CMakeFiles/tictactoe.dir/src/ntr/intconver.c.o -c /home/neutron/Documents/tictactoe/src/ntr/intconver.c

CMakeFiles/tictactoe.dir/src/ntr/intconver.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tictactoe.dir/src/ntr/intconver.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/neutron/Documents/tictactoe/src/ntr/intconver.c > CMakeFiles/tictactoe.dir/src/ntr/intconver.c.i

CMakeFiles/tictactoe.dir/src/ntr/intconver.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tictactoe.dir/src/ntr/intconver.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/neutron/Documents/tictactoe/src/ntr/intconver.c -o CMakeFiles/tictactoe.dir/src/ntr/intconver.c.s

CMakeFiles/tictactoe.dir/src/ntr/nmath.c.o: CMakeFiles/tictactoe.dir/flags.make
CMakeFiles/tictactoe.dir/src/ntr/nmath.c.o: ../src/ntr/nmath.c
CMakeFiles/tictactoe.dir/src/ntr/nmath.c.o: CMakeFiles/tictactoe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/neutron/Documents/tictactoe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/tictactoe.dir/src/ntr/nmath.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/tictactoe.dir/src/ntr/nmath.c.o -MF CMakeFiles/tictactoe.dir/src/ntr/nmath.c.o.d -o CMakeFiles/tictactoe.dir/src/ntr/nmath.c.o -c /home/neutron/Documents/tictactoe/src/ntr/nmath.c

CMakeFiles/tictactoe.dir/src/ntr/nmath.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tictactoe.dir/src/ntr/nmath.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/neutron/Documents/tictactoe/src/ntr/nmath.c > CMakeFiles/tictactoe.dir/src/ntr/nmath.c.i

CMakeFiles/tictactoe.dir/src/ntr/nmath.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tictactoe.dir/src/ntr/nmath.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/neutron/Documents/tictactoe/src/ntr/nmath.c -o CMakeFiles/tictactoe.dir/src/ntr/nmath.c.s

CMakeFiles/tictactoe.dir/src/ntr/utils.c.o: CMakeFiles/tictactoe.dir/flags.make
CMakeFiles/tictactoe.dir/src/ntr/utils.c.o: ../src/ntr/utils.c
CMakeFiles/tictactoe.dir/src/ntr/utils.c.o: CMakeFiles/tictactoe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/neutron/Documents/tictactoe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/tictactoe.dir/src/ntr/utils.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/tictactoe.dir/src/ntr/utils.c.o -MF CMakeFiles/tictactoe.dir/src/ntr/utils.c.o.d -o CMakeFiles/tictactoe.dir/src/ntr/utils.c.o -c /home/neutron/Documents/tictactoe/src/ntr/utils.c

CMakeFiles/tictactoe.dir/src/ntr/utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tictactoe.dir/src/ntr/utils.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/neutron/Documents/tictactoe/src/ntr/utils.c > CMakeFiles/tictactoe.dir/src/ntr/utils.c.i

CMakeFiles/tictactoe.dir/src/ntr/utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tictactoe.dir/src/ntr/utils.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/neutron/Documents/tictactoe/src/ntr/utils.c -o CMakeFiles/tictactoe.dir/src/ntr/utils.c.s

# Object files for target tictactoe
tictactoe_OBJECTS = \
"CMakeFiles/tictactoe.dir/src/main.c.o" \
"CMakeFiles/tictactoe.dir/src/ntr/color.c.o" \
"CMakeFiles/tictactoe.dir/src/ntr/errHandler.c.o" \
"CMakeFiles/tictactoe.dir/src/ntr/intconver.c.o" \
"CMakeFiles/tictactoe.dir/src/ntr/nmath.c.o" \
"CMakeFiles/tictactoe.dir/src/ntr/utils.c.o"

# External object files for target tictactoe
tictactoe_EXTERNAL_OBJECTS =

tictactoe: CMakeFiles/tictactoe.dir/src/main.c.o
tictactoe: CMakeFiles/tictactoe.dir/src/ntr/color.c.o
tictactoe: CMakeFiles/tictactoe.dir/src/ntr/errHandler.c.o
tictactoe: CMakeFiles/tictactoe.dir/src/ntr/intconver.c.o
tictactoe: CMakeFiles/tictactoe.dir/src/ntr/nmath.c.o
tictactoe: CMakeFiles/tictactoe.dir/src/ntr/utils.c.o
tictactoe: CMakeFiles/tictactoe.dir/build.make
tictactoe: CMakeFiles/tictactoe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/neutron/Documents/tictactoe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C executable tictactoe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tictactoe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tictactoe.dir/build: tictactoe
.PHONY : CMakeFiles/tictactoe.dir/build

CMakeFiles/tictactoe.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tictactoe.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tictactoe.dir/clean

CMakeFiles/tictactoe.dir/depend:
	cd /home/neutron/Documents/tictactoe/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/neutron/Documents/tictactoe /home/neutron/Documents/tictactoe /home/neutron/Documents/tictactoe/build /home/neutron/Documents/tictactoe/build /home/neutron/Documents/tictactoe/build/CMakeFiles/tictactoe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tictactoe.dir/depend

