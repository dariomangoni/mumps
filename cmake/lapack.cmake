if(NOT DEFINED LAPACK_COMPONENTS AND DEFINED ENV{MKLROOT})
  set(LAPACK_COMPONENTS MKL)
endif()

if(MKL IN_LIST LAPACK_COMPONENTS)
  if(intsize64)
    list(APPEND LAPACK_COMPONENTS MKL64)
  endif()
  if(openmp)
    list(APPEND LAPACK_COMPONENTS OpenMP)
  endif()
endif()

find_package(LAPACK REQUIRED COMPONENTS ${LAPACK_COMPONENTS})
