**FORD autodoc exercising**

Exercising the FORD Fortran Autodoc program to be sure that it supports the autodoc-ing of desired Fortran elements. Also show the available features of FORD and how to get them to work.

The code in *src/* exercises the FORD program with the following FORTRAN elements:

(note: unless noted, the autodoc comments are pre-docs (!>): that is, auto-documentation is placed before the item they document.)

- non-autodoc comments
- main program
- main program: variable declaration (post-doc: inline after declaration)
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
- cpp preprocess includes
- generic procedures
- generic type-bound procedures

Notes:
- FORD extracts procedure dummy variable information directly from the dummy variable FORTRAN declarations inside the procedure rather than any info inside an autodoc comment for the procedure definition. So, if the general procedure comment includes any dummy variable info, it is duplicative of the information displayed by FORD after directly analyzing the FORTRAN code. So, in the final generated autodoc documentation (htmal, pdf, etc.) there will be two sets of autodoc comments on the dummy variables, with the set generated directly from the FORTRAN code always (if there is no FORD bug) being correct. Generally, not a big deal. However, if a change is made to a procedure's dummy variable without changing its duplicative comment inside the procedure's autodoc comment, the two sets of comments on th$e dummy variable will disagree, with one being correct and the other not correct.


