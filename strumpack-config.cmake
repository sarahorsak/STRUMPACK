cmake_minimum_required(VERSION 3.11 FATAL_ERROR)

get_filename_component(STRUMPACK_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
list(APPEND CMAKE_MODULE_PATH ${STRUMPACK_CMAKE_DIR})

# message(STATUS "CMAKE_MODULE_PATH = " ${CMAKE_MODULE_PATH})

list(APPEND CMAKE_PREFIX_PATH "/home/sorsak/STRUMPACK/metis-5.1.0/install")

include(CMakeFindDependencyMacro)

enable_language(C)
enable_language(CXX)

if(ON) # STRUMPACK_USE_OPENMP
  find_dependency(OpenMP)
endif()

if(ON) # STRUMPACK_USE_MPI
  enable_language(Fortran)
  find_dependency(MPI)

   # there is no target for ScaLAPACK
   # find_dependency(SCALAPACK)
endif()

# don't really need to find these because they have no targets
# find_dependency(BLAS)
# find_dependency(LAPACK)

set(metis_PREFIX )
set(metis_INCLUDE_DIR )
set(metis_LIBRARY_DIR )
set(metis_LIBRARIES )
find_dependency(METIS)

if() # STRUMPACK_USE_SCOTCH
  set(scotch_PREFIX )
  set(scotch_INCLUDE_DIR )
  set(scotch_LIBRARY_DIR )
  set(scotch_LIBRARIES )
  find_dependency(SCOTCH)
endif()

if() # STRUMPACK_USE_PTSCOTCH
  set(ptscotch_PREFIX )
  set(ptscotch_INCLUDE_DIR )
  set(ptscotch_LIBRARY_DIR )
  set(ptscotch_LIBRARIES )
  find_dependency(PTSCOTCH)
endif()

if() # STRUMPACK_USE_PARMETIS
  set(parmetis_PREFIX )
  set(parmetis_INCLUDE_DIR )
  set(parmetis_LIBRARY_DIR )
  set(parmetis_LIBRARIES )
  find_dependency(ParMETIS)
endif()

if() # STRUMPACK_USE_ZFP
  set(zfp_PREFIX )
  set(zfp_INCLUDE_DIR )
  set(zfp_LIBRARY_DIR )
  set(zfp_LIBRARIES )
  find_dependency(ZFP)
endif()

if() # STRUMPACK_USE_BPACK
  find_dependency(ButterflyPACK)
endif()


list(REMOVE_AT CMAKE_MODULE_PATH -1)

if(NOT TARGET STRUMPACK::strumpack)
  include("${CMAKE_CURRENT_LIST_DIR}/strumpack-targets.cmake")
endif()

set(STRUMPACK_LIBRARIES STRUMPACK::strumpack)
