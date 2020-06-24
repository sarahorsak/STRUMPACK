# Install script for directory: /home/sorsak/STRUMPACK/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/home/sorsak/STRUMPACK/src/StrumpackOptions.hpp"
    "/home/sorsak/STRUMPACK/src/StrumpackParameters.hpp"
    "/home/sorsak/STRUMPACK/src/StrumpackSparseSolverBase.hpp"
    "/home/sorsak/STRUMPACK/src/StrumpackSparseSolver.hpp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "/home/sorsak/STRUMPACK/src/StrumpackSparseSolverMPIDist.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "/home/sorsak/STRUMPACK/StrumpackConfig.hpp")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/sorsak/STRUMPACK/src/misc/cmake_install.cmake")
  include("/home/sorsak/STRUMPACK/src/sparse/cmake_install.cmake")
  include("/home/sorsak/STRUMPACK/src/kernel/cmake_install.cmake")
  include("/home/sorsak/STRUMPACK/src/clustering/cmake_install.cmake")
  include("/home/sorsak/STRUMPACK/src/python/cmake_install.cmake")
  include("/home/sorsak/STRUMPACK/src/dense/cmake_install.cmake")
  include("/home/sorsak/STRUMPACK/src/HSS/cmake_install.cmake")
  include("/home/sorsak/STRUMPACK/src/HODLR/cmake_install.cmake")
  include("/home/sorsak/STRUMPACK/src/BLR/cmake_install.cmake")

endif()

