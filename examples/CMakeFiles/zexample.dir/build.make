# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /opt/ohpc/pub/utils/cmake/3.15.4/bin/cmake

# The command to remove a file.
RM = /opt/ohpc/pub/utils/cmake/3.15.4/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sorsak/STRUMPACK

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sorsak/STRUMPACK

# Include any dependencies generated for this target.
include examples/CMakeFiles/zexample.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/zexample.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/zexample.dir/flags.make

examples/CMakeFiles/zexample.dir/zexample.c.o: examples/CMakeFiles/zexample.dir/flags.make
examples/CMakeFiles/zexample.dir/zexample.c.o: examples/zexample.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sorsak/STRUMPACK/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object examples/CMakeFiles/zexample.dir/zexample.c.o"
	cd /home/sorsak/STRUMPACK/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zexample.dir/zexample.c.o   -c /home/sorsak/STRUMPACK/examples/zexample.c

examples/CMakeFiles/zexample.dir/zexample.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zexample.dir/zexample.c.i"
	cd /home/sorsak/STRUMPACK/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sorsak/STRUMPACK/examples/zexample.c > CMakeFiles/zexample.dir/zexample.c.i

examples/CMakeFiles/zexample.dir/zexample.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zexample.dir/zexample.c.s"
	cd /home/sorsak/STRUMPACK/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sorsak/STRUMPACK/examples/zexample.c -o CMakeFiles/zexample.dir/zexample.c.s

# Object files for target zexample
zexample_OBJECTS = \
"CMakeFiles/zexample.dir/zexample.c.o"

# External object files for target zexample
zexample_EXTERNAL_OBJECTS =

examples/zexample: examples/CMakeFiles/zexample.dir/zexample.c.o
examples/zexample: examples/CMakeFiles/zexample.dir/build.make
examples/zexample: libstrumpack.a
examples/zexample: /export/intel/inteloneapi/mpi/2021.1-beta06/lib/libmpicxx.so
examples/zexample: /export/intel/inteloneapi/mpi/2021.1-beta06/lib/libmpifort.so
examples/zexample: /export/intel/inteloneapi/mpi/2021.1-beta06/lib/release/libmpi.so
examples/zexample: /usr/lib64/librt.so
examples/zexample: /usr/lib64/libdl.so
examples/zexample: /usr/lib64/libpthread.so
examples/zexample: /export/intel/inteloneapi/mkl/2021.1-beta06/lib/intel64/libmkl_gf_lp64.so
examples/zexample: /export/intel/inteloneapi/mkl/2021.1-beta06/lib/intel64/libmkl_gnu_thread.so
examples/zexample: /export/intel/inteloneapi/mkl/2021.1-beta06/lib/intel64/libmkl_core.so
examples/zexample: /export/intel/inteloneapi/mkl/2021.1-beta06/lib/intel64/libmkl_gf_lp64.so
examples/zexample: /export/intel/inteloneapi/mkl/2021.1-beta06/lib/intel64/libmkl_gnu_thread.so
examples/zexample: /export/intel/inteloneapi/mkl/2021.1-beta06/lib/intel64/libmkl_core.so
examples/zexample: /usr/lib/gcc/x86_64-redhat-linux/4.8.5/libgomp.so
examples/zexample: metis-5.1.0/install/lib/libmetis.a
examples/zexample: examples/CMakeFiles/zexample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sorsak/STRUMPACK/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable zexample"
	cd /home/sorsak/STRUMPACK/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/zexample.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/zexample.dir/build: examples/zexample

.PHONY : examples/CMakeFiles/zexample.dir/build

examples/CMakeFiles/zexample.dir/clean:
	cd /home/sorsak/STRUMPACK/examples && $(CMAKE_COMMAND) -P CMakeFiles/zexample.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/zexample.dir/clean

examples/CMakeFiles/zexample.dir/depend:
	cd /home/sorsak/STRUMPACK && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sorsak/STRUMPACK /home/sorsak/STRUMPACK/examples /home/sorsak/STRUMPACK /home/sorsak/STRUMPACK/examples /home/sorsak/STRUMPACK/examples/CMakeFiles/zexample.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/zexample.dir/depend

