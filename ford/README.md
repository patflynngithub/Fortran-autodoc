cha# FORD autodoc exercising

Exercising the FORD Fortran Autodoc program to be sure that it supports the autodoc-ing of desired Fortran elements. Shows the available features of FORD and how to get them to work.

The code in *src/* exercises the FORD program with the following FORTRAN elements:

(note: unless noted, the autodoc comments are pre-docs (!>): that is, auto-documentation is placed before the item they document.)

- non-autodoc comments
- main program 
- main program: variable declaration with comment before declaration
- main program: variable declaration with inline comment after declaration
- main program: variable declaration with comment before and inline after declaration
- main program subroutine
- main program subroutine: variable declarations (logical, integer, real, character, type(), with/without kind as appropriate, in/out/inout, scalar/array)
- main program subroutine: variable declaration with inline comment after declaration
- main program function
- main program function: return type before function's name
- main program function: return type declaration inside function
- main program function: return result declaration
- main program function: variable declarations (logical, integer, real, character, type(), with/without kind as appropriate, in/out/inout, scalar/array)
- main program function: variable declaration with inline comment after declaration
- module
- module: module-level variable declarations (logical, integer, real, character, type(), with/without kind as appropriate, in/out/inout, scalar/array)
- module: module-level variable declaration with inline comment after declaration
- module subroutine
- module subroutine: dummy variable declarations (logical, integer, real, character, type(), with/without kind as appropriate, in/out/inout, scalar/array)
- module subroutine: local variable declarations (logical, integer, real, character, type(), with/without kind as appropriate, in/out/inout, scalar/array)
- module subroutine: local variable declaration with inline comment after declaration
- module function
- module function: return type before function's name (logical, integer, real, character, type(), with/without kind as appropriate, in/out/inout, scalar/array)
- module function: return type declaration inside function (logical, integer, real, character, type(), with/without kind as appropriate, in/out/inout, scalar/array)
- module function: return result declaration (?)
- module function: dummy variable declarations (logical, integer, real, character, type(), with/without kind as appropriate, in/out/inout, scalar/array)
- module function: local variable declarations (logical, integer, real, character, type(), with/without kind as appropriate, in/out/inout, scalar/array)
- module function: local variable declaration with inline comment after declaration
- module derived type: struct (no type-bound procedures)
- module derived type w/ type-bound procedures
- module derived type w/ type-bound procedures: private variable inside derived type (shouldn't be autodoc'd?)
- module type-bound subroutine
- module type-bound subroutine: dummy variable declarations (logical, integer, real, character, type(), with/without kind as appropriate, in/out/inout, scalar/array)
- module type-bound subroutine: local variable declarations (logical, integer, real, character, type(), with/without kind as appropriate, in/out/inout, scalar/array)
- module type-bound function
- module type-bound function: return type before function's name (logical, integer, real, character, type(), with/without kind as appropriate, in/out/inout, scalar/array)
- module type-bound function: return type declaration inside function (logical, integer, real, character, type(), with/without kind as appropriate, in/out/inout, scalar/array)
- module type-bound function: return result declaration (?)
- module type-bound function: dummy variable declarations (logical, integer, real, character, type(), with/without kind as appropriate, in/out/inout, scalar/array)
- module type-bound function: local variable declarations (logical, integer, real, character, type(), with/without kind as appropriate, in/out/inout, scalar/array)
- module: derived type that extends
- module with submodule
- module with submodule with declarations included in the module via CPP
- submodule that redeclares procedures
- submodule that doesn't redeclare procedures

FORTRAN elements still to add:

- generic procedures
- generic type-bound procedures

Notes:
- FORD extracts procedure dummy variable information directly from the dummy variable FORTRAN declarations inside the procedure rather than any info inside an autodoc comment for the procedure definition. So, if the general procedure comment includes any dummy variable info, it is duplicative of the information displayed by FORD after directly analyzing the FORTRAN code. So, in the final generated autodoc documentation (htmal, pdf, etc.) there will be two sets of autodoc comments on the dummy variables, with the set generated directly from the FORTRAN code always (if there is no FORD bug) being correct. Generally, not a big deal. However, if a change is made to a procedure's dummy variable without changing its duplicative comment inside the procedure's autodoc comment, the two sets of comments on th$e dummy variable will disagree, with one being correct and the other not correct.


