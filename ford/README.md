**FORD autodoc demonstration**

Note: Unless noted, the autodoc comments are pre-docs (!>): that is, documentation before the item they document.

The code in *src/* exercises the FORD program with the following FORTRAN elements:

- non-autodoc comments
- main program
- main program: variable declaration (inline after declaration)
- main program: subroutine
- main program: variable declaration inside subroutine (before declaration)
- main program: function
- main program: function return type declaration inside function
- main program: variable declaration inside function
- module
- module-level variable
- module: subroutine
- module: variable declaration inside subroutine
- module: function
- module: function return type declaration inside function
- module: variable declaration inside function
- module: derived type definition (struct)
- module: derived type definition (w/ type-bound procedures; i.e., a class)
- module: private variable inside derived type (shouldn't be autodoc'd)
- module: type-bound subroutine inside dervived type
- module: type-bound function inside dervived type
- module: derived type definition (extended class)
- submodule


FORTRAN elements still to add:

- main program: function return type in function declaration (rather than inside the function body)
- module: function return type in function declaration (rather than inside the function body)
- generic procedures
- generic type-bound procedures

Notes:
- FORD extracts procedure dummy variable information from the dummy variable declarations themselves rather than any info inside the autodoc comment before the procedure definition


