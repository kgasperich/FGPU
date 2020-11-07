# Host configuration file for redwood using cce 
# Assuming that the PrgEnv-cray module is loaded and an accelerator module is also loaded for openMP offload 

#------------------------------------------------------------------------------
# Setup some options
#------------------------------------------------------------------------------
set(ENABLE_FORTRAN ON CACHE BOOL "")
set(ENABLE_OPENMP ON CACHE BOOL "")

#------------------------------------------------------------------------------
# Compiler Definition
#------------------------------------------------------------------------------
set(CMAKE_C_COMPILER "cc" CACHE PATH "")
set(CMAKE_CXX_COMPILER "CC" CACHE PATH "")
set(CMAKE_Fortran_COMPILER "ftn" CACHE PATH "")

#------------------------------------------------------------------------------
# MPI Support
#------------------------------------------------------------------------------
set(ENABLE_MPI ON CACHE BOOL "")

#set(MPI_HOME             "/usr/tce/packages/mvapich2/mvapich2-2.3-clang-6.0.0" CACHE PATH "")
set(MPI_C_COMPILER       "cc"   CACHE PATH "")
set(MPI_CXX_COMPILER     "CC"  CACHE PATH "")
set(MPI_Fortran_COMPILER "ftn" CACHE PATH "")

set(MPIEXEC              "/usr/bin/srun" CACHE PATH "")
set(MPIEXEC_NUMPROC_FLAG "-n" CACHE PATH "")


#------------------------------------------------------------------------------
# OpenMP Support
#------------------------------------------------------------------------------
set(BLT_OPENMP_LINK_FLAGS "-homp" CACHE STRING "")  
#set(OpenMP_EXE_LINKER_FLAGS "-homp" CACHE STRING "") Ask Chris White why this doesn't cause BLT to add this to executables' link lines if they depend on OpenMP

#------------------------------------------------------------------------------
# system dependet configurations 
#------------------------------------------------------------------------------
set(BLT_SOURCE_DIR "/home/users/cmakrides/lib_builds/blt" CACHE PATH "BLT Root directory")