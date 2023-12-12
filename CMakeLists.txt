cmake_minimum_required(VERSION 3.25)
project(nupenv LANGUAGES Fortran)

include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/add_fortran_library.cmake)
include(CTest)

add_executable(env ./src/env.F90)
target_link_libraries(env envrl)

add_executable(nup ./src/nup.F90)
target_link_libraries(nup nupac)

add_subdirectory(envrl_lib)
add_subdirectory(nupac_lib)
add_subdirectory(modules_lib)



add_test(NAME testFOO COMMAND env)
set(passRegex "y is    20.000000000000000"  "y is    84.000000000000000")

set_property (TEST testFOO
              PROPERTY PASS_REGULAR_EXPRESSION "${passRegex}")

add_test(NAME testBAR COMMAND nup)

set(passRegex "y is    21.000000000000000"  "y is   110.000000000000000")

set_property (TEST testBAR
              PROPERTY PASS_REGULAR_EXPRESSION "${passRegex}")




