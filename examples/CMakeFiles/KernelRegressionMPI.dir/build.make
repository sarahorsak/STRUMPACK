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
include examples/CMakeFiles/KernelRegressionMPI.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/KernelRegressionMPI.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/KernelRegressionMPI.dir/flags.make

examples/CMakeFiles/KernelRegressionMPI.dir/KernelRegressionMPI.cpp.o: examples/CMakeFiles/KernelRegressionMPI.dir/flags.make
examples/CMakeFiles/KernelRegressionMPI.dir/KernelRegressionMPI.cpp.o: examples/KernelRegressionMPI.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sorsak/STRUMPACK/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/KernelRegressionMPI.dir/KernelRegressionMPI.cpp.o"
	cd /home/sorsak/STRUMPACK/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/KernelRegressionMPI.dir/KernelRegressionMPI.cpp.o -c /home/sorsak/STRUMPACK/examples/KernelRegressionMPI.cpp

examples/CMakeFiles/KernelRegressionMPI.dir/KernelRegressionMPI.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KernelRegressionMPI.dir/KernelRegressionMPI.cpp.i"
	cd /home/sorsak/STRUMPACK/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sorsak/STRUMPACK/examples/KernelRegressionMPI.cpp > CMakeFiles/KernelRegressionMPI.dir/KernelRegressionMPI.cpp.i

examples/CMakeFiles/KernelRegressionMPI.dir/KernelRegressionMPI.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KernelRegressionMPI.dir/KernelRegressionMPI.cpp.s"
	cd /home/sorsak/STRUMPACK/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sorsak/STRUMPACK/examples/KernelRegressionMPI.cpp -o CMakeFiles/KernelRegressionMPI.dir/KernelRegressionMPI.cpp.s

# Object files for target KernelRegressionMPI
KernelRegressionMPI_OBJECTS = \
"CMakeFiles/KernelRegressionMPI.dir/KernelRegressionMPI.cpp.o"

# External object files for target KernelRegressionMPI
KernelRegressionMPI_EXTERNAL_OBJECTS =

examples/KernelRegressionMPI: examples/CMakeFiles/KernelRegressionMPI.dir/KernelRegressionMPI.cpp.o
examples/KernelRegressionMPI: examples/CMakeFiles/KernelRegressionMPI.dir/build.make
examples/KernelRegressionMPI: libstrumpack.a
examples/KernelRegressionMPI: /export/intel/inteloneapi/mpi/2021.1-beta06/lib/libmpicxx.so
examples/KernelRegressionMPI: /export/intel/inteloneapi/mpi/2021.1-beta06/lib/libmpifort.so
examples/KernelRegressionMPI: /export/intel/inteloneapi/mpi/2021.1-beta06/lib/release/libmpi.so
examples/KernelRegressionMPI: /usr/lib64/librt.so
examples/KernelRegressionMPI: /usr/lib64/libdl.so
examples/KernelRegressionMPI: /usr/lib64/libpthread.so
examples/KernelRegressionMPI: /export/intel/inteloneapi/mkl/2021.1-beta06/lib/intel64/libmkl_gf_lp64.so
examples/KernelRegressionMPI: /export/intel/inteloneapi/mkl/2021.1-beta06/lib/intel64/libmkl_gnu_thread.so
examples/KernelRegressionMPI: /export/intel/inteloneapi/mkl/2021.1-beta06/lib/intel64/libmkl_core.so
examples/KernelRegressionMPI: /export/intel/inteloneapi/mkl/2021.1-beta06/lib/intel64/libmkl_gf_lp64.so
examples/KernelRegressionMPI: /export/intel/inteloneapi/mkl/2021.1-beta06/lib/intel64/libmkl_gnu_thread.so
examples/KernelRegressionMPI: /export/intel/inteloneapi/mkl/2021.1-beta06/lib/intel64/libmkl_core.so
examples/KernelRegressionMPI: /usr/lib/gcc/x86_64-redhat-linux/4.8.5/libgomp.so
examples/KernelRegressionMPI: metis-5.1.0/install/lib/libmetis.a
examples/KernelRegressionMPI: examples/CMakeFiles/KernelRegressionMPI.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sorsak/STRUMPACK/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable KernelRegressionMPI"
	cd /home/sorsak/STRUMPACK/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/KernelRegressionMPI.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/KernelRegressionMPI.dir/build: examples/KernelRegressionMPI

.PHONY : examples/CMakeFiles/KernelRegressionMPI.dir/build

examples/CMakeFiles/KernelRegressionMPI.dir/clean:
	cd /home/sorsak/STRUMPACK/examples && $(CMAKE_COMMAND) -P CMakeFiles/KernelRegressionMPI.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/KernelRegressionMPI.dir/clean

examples/CMakeFiles/KernelRegressionMPI.dir/depend:
	cd /home/sorsak/STRUMPACK && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sorsak/STRUMPACK /home/sorsak/STRUMPACK/examples /home/sorsak/STRUMPACK /home/sorsak/STRUMPACK/examples /home/sorsak/STRUMPACK/examples/CMakeFiles/KernelRegressionMPI.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/KernelRegressionMPI.dir/depend
