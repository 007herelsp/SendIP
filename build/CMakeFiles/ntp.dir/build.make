# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/gpu/work/sendip/SendIP

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gpu/work/sendip/SendIP/build

# Include any dependencies generated for this target.
include CMakeFiles/ntp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ntp.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ntp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ntp.dir/flags.make

CMakeFiles/ntp.dir/ntp.c.o: CMakeFiles/ntp.dir/flags.make
CMakeFiles/ntp.dir/ntp.c.o: ../ntp.c
CMakeFiles/ntp.dir/ntp.c.o: CMakeFiles/ntp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gpu/work/sendip/SendIP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/ntp.dir/ntp.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ntp.dir/ntp.c.o -MF CMakeFiles/ntp.dir/ntp.c.o.d -o CMakeFiles/ntp.dir/ntp.c.o -c /home/gpu/work/sendip/SendIP/ntp.c

CMakeFiles/ntp.dir/ntp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ntp.dir/ntp.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gpu/work/sendip/SendIP/ntp.c > CMakeFiles/ntp.dir/ntp.c.i

CMakeFiles/ntp.dir/ntp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ntp.dir/ntp.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gpu/work/sendip/SendIP/ntp.c -o CMakeFiles/ntp.dir/ntp.c.s

# Object files for target ntp
ntp_OBJECTS = \
"CMakeFiles/ntp.dir/ntp.c.o"

# External object files for target ntp
ntp_EXTERNAL_OBJECTS =

ntp.so: CMakeFiles/ntp.dir/ntp.c.o
ntp.so: CMakeFiles/ntp.dir/build.make
ntp.so: libCOMMON_LIB.a
ntp.so: CMakeFiles/ntp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gpu/work/sendip/SendIP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library ntp.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ntp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ntp.dir/build: ntp.so
.PHONY : CMakeFiles/ntp.dir/build

CMakeFiles/ntp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ntp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ntp.dir/clean

CMakeFiles/ntp.dir/depend:
	cd /home/gpu/work/sendip/SendIP/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gpu/work/sendip/SendIP /home/gpu/work/sendip/SendIP /home/gpu/work/sendip/SendIP/build /home/gpu/work/sendip/SendIP/build /home/gpu/work/sendip/SendIP/build/CMakeFiles/ntp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ntp.dir/depend

