add_fortran_library(modulesFOO
   ./src/A.F90
   ./src/B.F90
   ./src/C.F90
   )
target_compile_definitions(modulesFOO PUBLIC FOO)

add_fortran_library(modulesBAR
   ./src/A.F90
   ./src/B.F90
   ./src/C.F90
   )
target_compile_definitions(modulesBAR PUBLIC BAR)
