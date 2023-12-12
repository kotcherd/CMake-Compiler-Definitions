
# CMake-Compiler-Definitions

===== START
To Run, issue the command "source @go"

===== SUMMARY
This project uses CMake and Fortran files to demonstrate how to build
targets from a common module set of files that contain C preprocessor
definitions.

We build 2 executables, env and nup.
Both executables draw from a common module library to build a
library from distinct compiler definitions: For env, define FOO and for
nup, define BAR, yielding modulesFOO and modulesBAR libraries. 
Note that the source code for these libraries is different when the
compiler definitions are applied.
For each executable another library is built from their respective 
module library.

=====Details
The modules_lib source code is use to build modulesFOO - the library built
with the compiler definition FOO and modulesBAR - the library built with
the compiler definition BAR, resulting in different source code used for the
two modules libraries.

Executable target "env" has it's own library envrl, with modules e1 using module
file A.F90 and e2 using module file B.F90.

Executable target "nup" has it's own library nupac, with modules n1 using module
file A.F90 and n2 using module file C.F90.

So executable env results from compiler definition -DFOO and
   executable nup results from compiler definition -DBAR.
