# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Users/Egor/Desktop/SAO/Libs

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/Egor/Desktop/SAO/Libs/build

# Include any dependencies generated for this target.
include CMakeFiles/funcs.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/funcs.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/funcs.dir/flags.make

CMakeFiles/funcs.dir/lib.c.o: CMakeFiles/funcs.dir/flags.make
CMakeFiles/funcs.dir/lib.c.o: ../lib.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Egor/Desktop/SAO/Libs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/funcs.dir/lib.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/funcs.dir/lib.c.o   -c /mnt/c/Users/Egor/Desktop/SAO/Libs/lib.c

CMakeFiles/funcs.dir/lib.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/funcs.dir/lib.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/Egor/Desktop/SAO/Libs/lib.c > CMakeFiles/funcs.dir/lib.c.i

CMakeFiles/funcs.dir/lib.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/funcs.dir/lib.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/Egor/Desktop/SAO/Libs/lib.c -o CMakeFiles/funcs.dir/lib.c.s

# Object files for target funcs
funcs_OBJECTS = \
"CMakeFiles/funcs.dir/lib.c.o"

# External object files for target funcs
funcs_EXTERNAL_OBJECTS =

libfuncs.so: CMakeFiles/funcs.dir/lib.c.o
libfuncs.so: CMakeFiles/funcs.dir/build.make
libfuncs.so: CMakeFiles/funcs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/Egor/Desktop/SAO/Libs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library libfuncs.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/funcs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/funcs.dir/build: libfuncs.so

.PHONY : CMakeFiles/funcs.dir/build

CMakeFiles/funcs.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/funcs.dir/cmake_clean.cmake
.PHONY : CMakeFiles/funcs.dir/clean

CMakeFiles/funcs.dir/depend:
	cd /mnt/c/Users/Egor/Desktop/SAO/Libs/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/Egor/Desktop/SAO/Libs /mnt/c/Users/Egor/Desktop/SAO/Libs /mnt/c/Users/Egor/Desktop/SAO/Libs/build /mnt/c/Users/Egor/Desktop/SAO/Libs/build /mnt/c/Users/Egor/Desktop/SAO/Libs/build/CMakeFiles/funcs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/funcs.dir/depend

