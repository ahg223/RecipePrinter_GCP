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
include apps/traincascade/CMakeFiles/opencv_traincascade.dir/depend.make

# Include the progress variables for this target.
include apps/traincascade/CMakeFiles/opencv_traincascade.dir/progress.make

# Include the compile flags for this target's objects.
include apps/traincascade/CMakeFiles/opencv_traincascade.dir/flags.make

apps/traincascade/CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.o: apps/traincascade/CMakeFiles/opencv_traincascade.dir/flags.make
apps/traincascade/CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.o: ../apps/traincascade/HOGfeatures.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object apps/traincascade/CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.o"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.o -c /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/HOGfeatures.cpp

apps/traincascade/CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.i"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/HOGfeatures.cpp > CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.i

apps/traincascade/CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.s"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/HOGfeatures.cpp -o CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.s

apps/traincascade/CMakeFiles/opencv_traincascade.dir/boost.cpp.o: apps/traincascade/CMakeFiles/opencv_traincascade.dir/flags.make
apps/traincascade/CMakeFiles/opencv_traincascade.dir/boost.cpp.o: ../apps/traincascade/boost.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object apps/traincascade/CMakeFiles/opencv_traincascade.dir/boost.cpp.o"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_traincascade.dir/boost.cpp.o -c /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/boost.cpp

apps/traincascade/CMakeFiles/opencv_traincascade.dir/boost.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_traincascade.dir/boost.cpp.i"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/boost.cpp > CMakeFiles/opencv_traincascade.dir/boost.cpp.i

apps/traincascade/CMakeFiles/opencv_traincascade.dir/boost.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_traincascade.dir/boost.cpp.s"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/boost.cpp -o CMakeFiles/opencv_traincascade.dir/boost.cpp.s

apps/traincascade/CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.o: apps/traincascade/CMakeFiles/opencv_traincascade.dir/flags.make
apps/traincascade/CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.o: ../apps/traincascade/cascadeclassifier.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object apps/traincascade/CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.o"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.o -c /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/cascadeclassifier.cpp

apps/traincascade/CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.i"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/cascadeclassifier.cpp > CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.i

apps/traincascade/CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.s"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/cascadeclassifier.cpp -o CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.s

apps/traincascade/CMakeFiles/opencv_traincascade.dir/features.cpp.o: apps/traincascade/CMakeFiles/opencv_traincascade.dir/flags.make
apps/traincascade/CMakeFiles/opencv_traincascade.dir/features.cpp.o: ../apps/traincascade/features.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object apps/traincascade/CMakeFiles/opencv_traincascade.dir/features.cpp.o"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_traincascade.dir/features.cpp.o -c /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/features.cpp

apps/traincascade/CMakeFiles/opencv_traincascade.dir/features.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_traincascade.dir/features.cpp.i"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/features.cpp > CMakeFiles/opencv_traincascade.dir/features.cpp.i

apps/traincascade/CMakeFiles/opencv_traincascade.dir/features.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_traincascade.dir/features.cpp.s"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/features.cpp -o CMakeFiles/opencv_traincascade.dir/features.cpp.s

apps/traincascade/CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.o: apps/traincascade/CMakeFiles/opencv_traincascade.dir/flags.make
apps/traincascade/CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.o: ../apps/traincascade/haarfeatures.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object apps/traincascade/CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.o"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.o -c /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/haarfeatures.cpp

apps/traincascade/CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.i"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/haarfeatures.cpp > CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.i

apps/traincascade/CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.s"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/haarfeatures.cpp -o CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.s

apps/traincascade/CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.o: apps/traincascade/CMakeFiles/opencv_traincascade.dir/flags.make
apps/traincascade/CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.o: ../apps/traincascade/imagestorage.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object apps/traincascade/CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.o"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.o -c /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/imagestorage.cpp

apps/traincascade/CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.i"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/imagestorage.cpp > CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.i

apps/traincascade/CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.s"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/imagestorage.cpp -o CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.s

apps/traincascade/CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.o: apps/traincascade/CMakeFiles/opencv_traincascade.dir/flags.make
apps/traincascade/CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.o: ../apps/traincascade/lbpfeatures.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object apps/traincascade/CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.o"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.o -c /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/lbpfeatures.cpp

apps/traincascade/CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.i"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/lbpfeatures.cpp > CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.i

apps/traincascade/CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.s"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/lbpfeatures.cpp -o CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.s

apps/traincascade/CMakeFiles/opencv_traincascade.dir/old_ml_boost.cpp.o: apps/traincascade/CMakeFiles/opencv_traincascade.dir/flags.make
apps/traincascade/CMakeFiles/opencv_traincascade.dir/old_ml_boost.cpp.o: ../apps/traincascade/old_ml_boost.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object apps/traincascade/CMakeFiles/opencv_traincascade.dir/old_ml_boost.cpp.o"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_traincascade.dir/old_ml_boost.cpp.o -c /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/old_ml_boost.cpp

apps/traincascade/CMakeFiles/opencv_traincascade.dir/old_ml_boost.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_traincascade.dir/old_ml_boost.cpp.i"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/old_ml_boost.cpp > CMakeFiles/opencv_traincascade.dir/old_ml_boost.cpp.i

apps/traincascade/CMakeFiles/opencv_traincascade.dir/old_ml_boost.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_traincascade.dir/old_ml_boost.cpp.s"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/old_ml_boost.cpp -o CMakeFiles/opencv_traincascade.dir/old_ml_boost.cpp.s

apps/traincascade/CMakeFiles/opencv_traincascade.dir/old_ml_data.cpp.o: apps/traincascade/CMakeFiles/opencv_traincascade.dir/flags.make
apps/traincascade/CMakeFiles/opencv_traincascade.dir/old_ml_data.cpp.o: ../apps/traincascade/old_ml_data.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object apps/traincascade/CMakeFiles/opencv_traincascade.dir/old_ml_data.cpp.o"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_traincascade.dir/old_ml_data.cpp.o -c /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/old_ml_data.cpp

apps/traincascade/CMakeFiles/opencv_traincascade.dir/old_ml_data.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_traincascade.dir/old_ml_data.cpp.i"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/old_ml_data.cpp > CMakeFiles/opencv_traincascade.dir/old_ml_data.cpp.i

apps/traincascade/CMakeFiles/opencv_traincascade.dir/old_ml_data.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_traincascade.dir/old_ml_data.cpp.s"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/old_ml_data.cpp -o CMakeFiles/opencv_traincascade.dir/old_ml_data.cpp.s

apps/traincascade/CMakeFiles/opencv_traincascade.dir/old_ml_inner_functions.cpp.o: apps/traincascade/CMakeFiles/opencv_traincascade.dir/flags.make
apps/traincascade/CMakeFiles/opencv_traincascade.dir/old_ml_inner_functions.cpp.o: ../apps/traincascade/old_ml_inner_functions.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object apps/traincascade/CMakeFiles/opencv_traincascade.dir/old_ml_inner_functions.cpp.o"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_traincascade.dir/old_ml_inner_functions.cpp.o -c /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/old_ml_inner_functions.cpp

apps/traincascade/CMakeFiles/opencv_traincascade.dir/old_ml_inner_functions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_traincascade.dir/old_ml_inner_functions.cpp.i"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/old_ml_inner_functions.cpp > CMakeFiles/opencv_traincascade.dir/old_ml_inner_functions.cpp.i

apps/traincascade/CMakeFiles/opencv_traincascade.dir/old_ml_inner_functions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_traincascade.dir/old_ml_inner_functions.cpp.s"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/old_ml_inner_functions.cpp -o CMakeFiles/opencv_traincascade.dir/old_ml_inner_functions.cpp.s

apps/traincascade/CMakeFiles/opencv_traincascade.dir/old_ml_tree.cpp.o: apps/traincascade/CMakeFiles/opencv_traincascade.dir/flags.make
apps/traincascade/CMakeFiles/opencv_traincascade.dir/old_ml_tree.cpp.o: ../apps/traincascade/old_ml_tree.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object apps/traincascade/CMakeFiles/opencv_traincascade.dir/old_ml_tree.cpp.o"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_traincascade.dir/old_ml_tree.cpp.o -c /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/old_ml_tree.cpp

apps/traincascade/CMakeFiles/opencv_traincascade.dir/old_ml_tree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_traincascade.dir/old_ml_tree.cpp.i"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/old_ml_tree.cpp > CMakeFiles/opencv_traincascade.dir/old_ml_tree.cpp.i

apps/traincascade/CMakeFiles/opencv_traincascade.dir/old_ml_tree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_traincascade.dir/old_ml_tree.cpp.s"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/old_ml_tree.cpp -o CMakeFiles/opencv_traincascade.dir/old_ml_tree.cpp.s

apps/traincascade/CMakeFiles/opencv_traincascade.dir/traincascade.cpp.o: apps/traincascade/CMakeFiles/opencv_traincascade.dir/flags.make
apps/traincascade/CMakeFiles/opencv_traincascade.dir/traincascade.cpp.o: ../apps/traincascade/traincascade.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object apps/traincascade/CMakeFiles/opencv_traincascade.dir/traincascade.cpp.o"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_traincascade.dir/traincascade.cpp.o -c /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/traincascade.cpp

apps/traincascade/CMakeFiles/opencv_traincascade.dir/traincascade.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_traincascade.dir/traincascade.cpp.i"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/traincascade.cpp > CMakeFiles/opencv_traincascade.dir/traincascade.cpp.i

apps/traincascade/CMakeFiles/opencv_traincascade.dir/traincascade.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_traincascade.dir/traincascade.cpp.s"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade/traincascade.cpp -o CMakeFiles/opencv_traincascade.dir/traincascade.cpp.s

# Object files for target opencv_traincascade
opencv_traincascade_OBJECTS = \
"CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.o" \
"CMakeFiles/opencv_traincascade.dir/boost.cpp.o" \
"CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.o" \
"CMakeFiles/opencv_traincascade.dir/features.cpp.o" \
"CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.o" \
"CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.o" \
"CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.o" \
"CMakeFiles/opencv_traincascade.dir/old_ml_boost.cpp.o" \
"CMakeFiles/opencv_traincascade.dir/old_ml_data.cpp.o" \
"CMakeFiles/opencv_traincascade.dir/old_ml_inner_functions.cpp.o" \
"CMakeFiles/opencv_traincascade.dir/old_ml_tree.cpp.o" \
"CMakeFiles/opencv_traincascade.dir/traincascade.cpp.o"

# External object files for target opencv_traincascade
opencv_traincascade_EXTERNAL_OBJECTS =

bin/opencv_traincascade: apps/traincascade/CMakeFiles/opencv_traincascade.dir/HOGfeatures.cpp.o
bin/opencv_traincascade: apps/traincascade/CMakeFiles/opencv_traincascade.dir/boost.cpp.o
bin/opencv_traincascade: apps/traincascade/CMakeFiles/opencv_traincascade.dir/cascadeclassifier.cpp.o
bin/opencv_traincascade: apps/traincascade/CMakeFiles/opencv_traincascade.dir/features.cpp.o
bin/opencv_traincascade: apps/traincascade/CMakeFiles/opencv_traincascade.dir/haarfeatures.cpp.o
bin/opencv_traincascade: apps/traincascade/CMakeFiles/opencv_traincascade.dir/imagestorage.cpp.o
bin/opencv_traincascade: apps/traincascade/CMakeFiles/opencv_traincascade.dir/lbpfeatures.cpp.o
bin/opencv_traincascade: apps/traincascade/CMakeFiles/opencv_traincascade.dir/old_ml_boost.cpp.o
bin/opencv_traincascade: apps/traincascade/CMakeFiles/opencv_traincascade.dir/old_ml_data.cpp.o
bin/opencv_traincascade: apps/traincascade/CMakeFiles/opencv_traincascade.dir/old_ml_inner_functions.cpp.o
bin/opencv_traincascade: apps/traincascade/CMakeFiles/opencv_traincascade.dir/old_ml_tree.cpp.o
bin/opencv_traincascade: apps/traincascade/CMakeFiles/opencv_traincascade.dir/traincascade.cpp.o
bin/opencv_traincascade: apps/traincascade/CMakeFiles/opencv_traincascade.dir/build.make
bin/opencv_traincascade: 3rdparty/lib/libippiw.a
bin/opencv_traincascade: 3rdparty/ippicv/ippicv_mac/lib/intel64/libippicv.a
bin/opencv_traincascade: lib/libopencv_core.a
bin/opencv_traincascade: lib/libopencv_imgproc.a
bin/opencv_traincascade: lib/libopencv_objdetect.a
bin/opencv_traincascade: lib/libopencv_imgcodecs.a
bin/opencv_traincascade: lib/libopencv_highgui.a
bin/opencv_traincascade: lib/libopencv_calib3d.a
bin/opencv_traincascade: lib/libopencv_features2d.a
bin/opencv_traincascade: lib/libopencv_highgui.a
bin/opencv_traincascade: lib/libopencv_videoio.a
bin/opencv_traincascade: lib/libopencv_imgcodecs.a
bin/opencv_traincascade: lib/libopencv_imgproc.a
bin/opencv_traincascade: 3rdparty/lib/liblibjpeg.a
bin/opencv_traincascade: /usr/local/lib/libwebp.dylib
bin/opencv_traincascade: 3rdparty/lib/liblibpng.a
bin/opencv_traincascade: 3rdparty/lib/liblibtiff.a
bin/opencv_traincascade: 3rdparty/lib/liblibjasper.a
bin/opencv_traincascade: 3rdparty/lib/libIlmImf.a
bin/opencv_traincascade: lib/libopencv_flann.a
bin/opencv_traincascade: lib/libopencv_core.a
bin/opencv_traincascade: 3rdparty/lib/libippiw.a
bin/opencv_traincascade: 3rdparty/ippicv/ippicv_mac/lib/intel64/libippicv.a
bin/opencv_traincascade: 3rdparty/lib/libzlib.a
bin/opencv_traincascade: 3rdparty/lib/libittnotify.a
bin/opencv_traincascade: apps/traincascade/CMakeFiles/opencv_traincascade.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX executable ../../bin/opencv_traincascade"
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_traincascade.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/traincascade/CMakeFiles/opencv_traincascade.dir/build: bin/opencv_traincascade

.PHONY : apps/traincascade/CMakeFiles/opencv_traincascade.dir/build

apps/traincascade/CMakeFiles/opencv_traincascade.dir/clean:
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade && $(CMAKE_COMMAND) -P CMakeFiles/opencv_traincascade.dir/cmake_clean.cmake
.PHONY : apps/traincascade/CMakeFiles/opencv_traincascade.dir/clean

apps/traincascade/CMakeFiles/opencv_traincascade.dir/depend:
	cd /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hyunggeunahn/Downloads/opencv-3.4.0 /Users/hyunggeunahn/Downloads/opencv-3.4.0/apps/traincascade /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-static/apps/traincascade/CMakeFiles/opencv_traincascade.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/traincascade/CMakeFiles/opencv_traincascade.dir/depend

