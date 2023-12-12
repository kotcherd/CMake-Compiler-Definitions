add_fortran_library(nupac ./src/n1.F90 ./src/n2.F90)
target_link_libraries(nupac PUBLIC modulesBAR)



