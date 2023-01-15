## The Fortran entities that the source code files implement

### note: many of the dummy and local variable declarations are duplicated in their autodoc comments so that one can easily see how FORD interpreted them for autodoc purposes

- main.F90
  - program-level variables/procedures
  - simple preprocessor include (dummy_vars.inc)
- a_mod.F90
  - module-level private variable (shouldn't be autodoc'd)
  - module-level variables/procedures
  - simple preprocessor include (dummy_vars.inc)
- kinds_mod.F90
  - defines kinds used in the program
- types_mod.F90
  - defines derived types (structs)
- classes_mod.F90
  - defines derived types with type-bound procedures
  - derived type extension
  - relies on submodules
  - one of the derived types (complex) relies on preprocessor includes of *complex_type.inc* for its definition and the interface to its submodule part of the definition
- int_class_submod.F90
  - submodule of classes_mod
  - redeclaration of module declarations
- real_class_submod.F90
  - submodule of classes_mod
  - no redeclaration of module declarations
- complex_class_submod.F90
  - submodule of classes_mod
  - no redeclaration of module declarations
 