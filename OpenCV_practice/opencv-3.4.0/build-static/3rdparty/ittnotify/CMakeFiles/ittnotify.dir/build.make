# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/hyunggeunahn/Downloads/opencv-3.4.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static

# Include any dependencies generated for this target.
include 3rdparty/ittnotify/CMakeFiles/ittnotify.dir/depend.make

# Include the progress variables for this target.
include 3rdparty/ittnotify/CMakeFiles/ittnotify.dir/progress.make

# Include the compile flags for this target's objects.
include 3rdparty/ittnotify/CMakeFiles/ittnotify.dir/flags.make

3rdparty/ittnotify/CMakeFiles/ittnotify.dir/src/ittnotify/ittnotify_static.c.o: 3rdparty/ittnotify/CMakeFiles/ittnotify.dir/flags.make
3rdparty/ittnotify/CMakeFiles/ittnotify.dir/src/ittnotify/ittnotify_static.c.o: ../3rdparty/ittnotify/src/ittnotify/ittnotify_static.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object 3rdparty/ittnotify/CMakeFiles/ittnotify.dir/src/ittnotify/ittnotify_static.c.o"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/3rdparty/ittnotify && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ittnotify.dir/src/ittnotify/ittnotify_static.c.o   -c /Users/hyunggeunahn/Downloads/opencv-3.4.0/3rdparty/ittnotify/src/ittnotify/ittnotify_static.c

3rdparty/ittnotify/CMakeFiles/ittnotify.dir/src/ittnotify/ittnotify_static.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ittnotify.dir/src/ittnotify/ittnotify_static.c.i"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/3rdparty/ittnotify && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/hyunggeunahn/Downloads/opencv-3.4.0/3rdparty/ittnotify/src/ittnotify/ittnotify_static.c > CMakeFiles/ittnotify.dir/src/ittnotify/ittnotify_static.c.i

3rdparty/ittnotify/CMakeFiles/ittnotify.dir/src/ittnotify/ittnotify_static.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ittnotify.dir/src/ittnotify/ittnotify_static.c.s"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/3rdparty/ittnotify && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/hyunggeunahn/Downloads/opencv-3.4.0/3rdparty/ittnotify/src/ittnotify/ittnotify_static.c -o CMakeFiles/ittnotify.dir/src/ittnotify/ittnotify_static.c.s

3rdparty/ittnotify/CMakeFiles/ittnotify.dir/src/ittnotify/jitprofiling.c.o: 3rdparty/ittnotify/CMakeFiles/ittnotify.dir/flags.make
3rdparty/ittnotify/CMakeFiles/ittnotify.dir/src/ittnotify/jitprofiling.c.o: ../3rdparty/ittnotify/src/ittnotify/jitprofiling.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object 3rdparty/ittnotify/CMakeFiles/ittnotify.dir/src/ittnotify/jitprofiling.c.o"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/3rdparty/ittnotify && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ittnotify.dir/src/ittnotify/jitprofiling.c.o   -c /Users/hyunggeunahn/Downloads/opencv-3.4.0/3rdparty/ittnotify/src/ittnotify/jitprofiling.c

3rdparty/ittnotify/CMakeFiles/ittnotify.dir/src/ittnotify/jitprofiling.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ittnotify.dir/src/ittnotify/jitprofiling.c.i"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/3rdparty/ittnotify && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/hyunggeunahn/Downloads/opencv-3.4.0/3rdparty/ittnotify/src/ittnotify/jitprofiling.c > CMakeFiles/ittnotify.dir/src/ittnotify/jitprofiling.c.i

3rdparty/ittnotify/CMakeFiles/ittnotify.dir/src/ittnotify/jitprofiling.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ittnotify.dir/src/ittnotify/jitprofiling.c.s"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/3rdparty/ittnotify && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/hyunggeunahn/Downloads/opencv-3.4.0/3rdparty/ittnotify/src/ittnotify/jitprofiling.c -o CMakeFiles/ittnotify.dir/src/ittnotify/jitprofiling.c.s

# Object files for target ittnotify
ittnotify_OBJECTS = \
"CMakeFiles/ittnotify.dir/src/ittnotify/ittnotify_static.c.o" \
"CMakeFiles/ittnotify.dir/src/ittnotify/jitprofiling.c.o"

# External object files for target ittnotify
ittnotify_EXTERNAL_OBJECTS =

3rdparty/lib/libittnotify.a: 3rdparty/ittnotify/CMakeFiles/ittnotify.dir/src/ittnotify/ittnotify_static.c.o
3rdparty/lib/libittnotify.a: 3rdparty/ittnotify/CMakeFiles/ittnotify.dir/src/ittnotify/jitprofiling.c.o
3rdparty/lib/libittnotify.a: 3rdparty/ittnotify/CMakeFiles/ittnotify.dir/build.make
3rdparty/lib/libittnotify.a: 3rdparty/ittnotify/CMakeFiles/ittnotify.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library ../lib/libittnotify.a"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/3rdparty/ittnotify && $(CMAKE_COMMAND) -P CMakeFiles/ittnotify.dir/cmake_clean_target.cmake
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/3rdparty/ittnotify && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ittnotify.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
3rdparty/ittnotify/CMakeFiles/ittnotify.dir/build: 3rdparty/lib/libittnotify.a

.PHONY : 3rdparty/ittnotify/CMakeFiles/ittnotify.dir/build

3rdparty/ittnotify/CMakeFiles/ittnotify.dir/clean:
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/3rdparty/ittnotify && $(CMAKE_COMMAND) -P CMakeFiles/ittnotify.dir/cmake_clean.cmake
.PHONY : 3rdparty/ittnotify/CMakeFiles/ittnotify.dir/clean

3rdparty/ittnotify/CMakeFiles/ittnotify.dir/depend:
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hyunggeunahn/Downloads/opencv-3.4.0 /Users/hyunggeunahn/Downloads/opencv-3.4.0/3rdparty/ittnotify /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/3rdparty/ittnotify /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/3rdparty/ittnotify/CMakeFiles/ittnotify.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : 3rdparty/ittnotify/CMakeFiles/ittnotify.dir/depend

