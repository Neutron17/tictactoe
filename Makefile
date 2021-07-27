# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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
CMAKE_BINARY_DIR = /home/neutron/Documents/tictactoe

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/neutron/Documents/tictactoe/CMakeFiles /home/neutron/Documents/tictactoe//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/neutron/Documents/tictactoe/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named tictactoe

# Build rule for target.
tictactoe: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 tictactoe
.PHONY : tictactoe

# fast build rule for target.
tictactoe/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tictactoe.dir/build.make CMakeFiles/tictactoe.dir/build
.PHONY : tictactoe/fast

src/main.o: src/main.c.o
.PHONY : src/main.o

# target to build an object file
src/main.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tictactoe.dir/build.make CMakeFiles/tictactoe.dir/src/main.c.o
.PHONY : src/main.c.o

src/main.i: src/main.c.i
.PHONY : src/main.i

# target to preprocess a source file
src/main.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tictactoe.dir/build.make CMakeFiles/tictactoe.dir/src/main.c.i
.PHONY : src/main.c.i

src/main.s: src/main.c.s
.PHONY : src/main.s

# target to generate assembly for a file
src/main.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tictactoe.dir/build.make CMakeFiles/tictactoe.dir/src/main.c.s
.PHONY : src/main.c.s

src/ntr/color.o: src/ntr/color.c.o
.PHONY : src/ntr/color.o

# target to build an object file
src/ntr/color.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tictactoe.dir/build.make CMakeFiles/tictactoe.dir/src/ntr/color.c.o
.PHONY : src/ntr/color.c.o

src/ntr/color.i: src/ntr/color.c.i
.PHONY : src/ntr/color.i

# target to preprocess a source file
src/ntr/color.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tictactoe.dir/build.make CMakeFiles/tictactoe.dir/src/ntr/color.c.i
.PHONY : src/ntr/color.c.i

src/ntr/color.s: src/ntr/color.c.s
.PHONY : src/ntr/color.s

# target to generate assembly for a file
src/ntr/color.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tictactoe.dir/build.make CMakeFiles/tictactoe.dir/src/ntr/color.c.s
.PHONY : src/ntr/color.c.s

src/ntr/errHandler.o: src/ntr/errHandler.c.o
.PHONY : src/ntr/errHandler.o

# target to build an object file
src/ntr/errHandler.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tictactoe.dir/build.make CMakeFiles/tictactoe.dir/src/ntr/errHandler.c.o
.PHONY : src/ntr/errHandler.c.o

src/ntr/errHandler.i: src/ntr/errHandler.c.i
.PHONY : src/ntr/errHandler.i

# target to preprocess a source file
src/ntr/errHandler.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tictactoe.dir/build.make CMakeFiles/tictactoe.dir/src/ntr/errHandler.c.i
.PHONY : src/ntr/errHandler.c.i

src/ntr/errHandler.s: src/ntr/errHandler.c.s
.PHONY : src/ntr/errHandler.s

# target to generate assembly for a file
src/ntr/errHandler.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tictactoe.dir/build.make CMakeFiles/tictactoe.dir/src/ntr/errHandler.c.s
.PHONY : src/ntr/errHandler.c.s

src/ntr/intconver.o: src/ntr/intconver.c.o
.PHONY : src/ntr/intconver.o

# target to build an object file
src/ntr/intconver.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tictactoe.dir/build.make CMakeFiles/tictactoe.dir/src/ntr/intconver.c.o
.PHONY : src/ntr/intconver.c.o

src/ntr/intconver.i: src/ntr/intconver.c.i
.PHONY : src/ntr/intconver.i

# target to preprocess a source file
src/ntr/intconver.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tictactoe.dir/build.make CMakeFiles/tictactoe.dir/src/ntr/intconver.c.i
.PHONY : src/ntr/intconver.c.i

src/ntr/intconver.s: src/ntr/intconver.c.s
.PHONY : src/ntr/intconver.s

# target to generate assembly for a file
src/ntr/intconver.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tictactoe.dir/build.make CMakeFiles/tictactoe.dir/src/ntr/intconver.c.s
.PHONY : src/ntr/intconver.c.s

src/ntr/nmath.o: src/ntr/nmath.c.o
.PHONY : src/ntr/nmath.o

# target to build an object file
src/ntr/nmath.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tictactoe.dir/build.make CMakeFiles/tictactoe.dir/src/ntr/nmath.c.o
.PHONY : src/ntr/nmath.c.o

src/ntr/nmath.i: src/ntr/nmath.c.i
.PHONY : src/ntr/nmath.i

# target to preprocess a source file
src/ntr/nmath.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tictactoe.dir/build.make CMakeFiles/tictactoe.dir/src/ntr/nmath.c.i
.PHONY : src/ntr/nmath.c.i

src/ntr/nmath.s: src/ntr/nmath.c.s
.PHONY : src/ntr/nmath.s

# target to generate assembly for a file
src/ntr/nmath.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tictactoe.dir/build.make CMakeFiles/tictactoe.dir/src/ntr/nmath.c.s
.PHONY : src/ntr/nmath.c.s

src/ntr/utils.o: src/ntr/utils.c.o
.PHONY : src/ntr/utils.o

# target to build an object file
src/ntr/utils.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tictactoe.dir/build.make CMakeFiles/tictactoe.dir/src/ntr/utils.c.o
.PHONY : src/ntr/utils.c.o

src/ntr/utils.i: src/ntr/utils.c.i
.PHONY : src/ntr/utils.i

# target to preprocess a source file
src/ntr/utils.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tictactoe.dir/build.make CMakeFiles/tictactoe.dir/src/ntr/utils.c.i
.PHONY : src/ntr/utils.c.i

src/ntr/utils.s: src/ntr/utils.c.s
.PHONY : src/ntr/utils.s

# target to generate assembly for a file
src/ntr/utils.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tictactoe.dir/build.make CMakeFiles/tictactoe.dir/src/ntr/utils.c.s
.PHONY : src/ntr/utils.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... tictactoe"
	@echo "... src/main.o"
	@echo "... src/main.i"
	@echo "... src/main.s"
	@echo "... src/ntr/color.o"
	@echo "... src/ntr/color.i"
	@echo "... src/ntr/color.s"
	@echo "... src/ntr/errHandler.o"
	@echo "... src/ntr/errHandler.i"
	@echo "... src/ntr/errHandler.s"
	@echo "... src/ntr/intconver.o"
	@echo "... src/ntr/intconver.i"
	@echo "... src/ntr/intconver.s"
	@echo "... src/ntr/nmath.o"
	@echo "... src/ntr/nmath.i"
	@echo "... src/ntr/nmath.s"
	@echo "... src/ntr/utils.o"
	@echo "... src/ntr/utils.i"
	@echo "... src/ntr/utils.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

