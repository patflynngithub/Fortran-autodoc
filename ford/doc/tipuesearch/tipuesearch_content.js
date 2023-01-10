var tipuesearch = {"pages":[{"title":" FORD Fortran project ","text":"FORD Fortran project preprocess: False This is my FORD Fortran project! Developer Info Patrick Flynn","tags":"home","loc":"index.html"},{"title":"my_struct_t – FORD Fortran project ","text":"type, public :: my_struct_t Holds the integer value Contents Variables value Components Type Visibility Attributes Name Initial integer, public :: value","tags":"","loc":"type/my_struct_t.html"},{"title":"my_class_t – FORD Fortran project ","text":"type, public :: my_class_t Holds the integer structure Contents Type-Bound Procedures set_value Type-Bound Procedures procedure, public :: set_value => set_value_my_class Sets the integer structure interface For submodule public module subroutine set_value_my_class(this, value) Arguments Type Intent Optional Attributes Name class( my_class_t ), intent(inout) :: this integer, intent(in) :: value","tags":"","loc":"type/my_class_t.html"},{"title":"my_class_extended_t – FORD Fortran project ","text":"type, public, extends( my_class_t ) :: my_class_extended_t Adds capability to check if an integer has been stored Contents Type-Bound Procedures set_value is_set Type-Bound Procedures procedure, public :: set_value => set_value_my_class_extended Stores integer and records that this storage happened interface For submodule public module subroutine set_value_my_class_extended(this, value) Arguments Type Intent Optional Attributes Name class( my_class_extended_t ), intent(inout) :: this integer, intent(in) :: value procedure, public :: is_set Has an integer been stored yet? interface For submodule public module function is_set(this) Arguments Type Intent Optional Attributes Name class( my_class_extended_t ), intent(in) :: this Return Value logical","tags":"","loc":"type/my_class_extended_t.html"},{"title":"write_a_mod_fcn – FORD Fortran project","text":"public  function write_a_mod_fcn(output) Write output from an a_mod module function Arguments Type Intent Optional Attributes Name character(len=*), intent(in) :: output What to output Return Value integer Just wanted a function. Return value not meaningful. Contents","tags":"","loc":"proc/write_a_mod_fcn.html"},{"title":"write_a_mod – FORD Fortran project","text":"public  subroutine write_a_mod(output) Write output from an a_mod module subroutine Arguments Type Intent Optional Attributes Name character(len=*), intent(in) :: output What to output Contents","tags":"","loc":"proc/write_a_mod.html"},{"title":"write_main_fcn – FORD Fortran project","text":"function write_main_fcn(output) Write output from a main program function output   [in]    string to output Arguments Type Intent Optional Attributes Name character(len=*), intent(in) :: output What to output Return Value integer Just wanted a function. Return value not meaningful. Contents","tags":"","loc":"proc/write_main_fcn.html"},{"title":"write_main – FORD Fortran project","text":"subroutine write_main(output) Write output from a main program subroutine output   [in]    string to output Arguments Type Intent Optional Attributes Name character(len=*), intent(in) :: output What to output Contents","tags":"","loc":"proc/write_main.html"},{"title":"is_set – FORD Fortran project","text":"interface For submodule public module function is_set(this) Arguments Type Intent Optional Attributes Name class( my_class_extended_t ), intent(in) :: this Return Value logical","tags":"","loc":"interface/is_set.html"},{"title":"set_value_my_class – FORD Fortran project","text":"interface For submodule public module subroutine set_value_my_class(this, value) Arguments Type Intent Optional Attributes Name class( my_class_t ), intent(inout) :: this integer, intent(in) :: value","tags":"","loc":"interface/set_value_my_class.html"},{"title":"set_value_my_class_extended – FORD Fortran project","text":"interface For submodule public module subroutine set_value_my_class_extended(this, value) Arguments Type Intent Optional Attributes Name class( my_class_extended_t ), intent(inout) :: this integer, intent(in) :: value","tags":"","loc":"interface/set_value_my_class_extended.html"},{"title":"a_mod – FORD Fortran project","text":"Fortran module Contents Variables a_mod_int_value Functions write_a_mod_fcn Subroutines write_a_mod Variables Type Visibility Attributes Name Initial integer, public :: a_mod_int_value not used but want example of module-level vairable Functions public  function write_a_mod_fcn (output) Write output from an a_mod module function Arguments Type Intent Optional Attributes Name character(len=*), intent(in) :: output What to output Return Value integer Just wanted a function. Return value not meaningful. Subroutines public  subroutine write_a_mod (output) Write output from an a_mod module subroutine Arguments Type Intent Optional Attributes Name character(len=*), intent(in) :: output What to output","tags":"","loc":"module/a_mod.html"},{"title":"types_mod – FORD Fortran project","text":"Module with a submodule Used by Descendants: types_submod Contents Interfaces is_set set_value_my_class set_value_my_class_extended Derived Types my_struct_t my_class_t my_class_extended_t Interfaces interface For submodule public module function is_set(this) Arguments Type Intent Optional Attributes Name class( my_class_extended_t ), intent(in) :: this Return Value logical interface For submodule public module subroutine set_value_my_class(this, value) Arguments Type Intent Optional Attributes Name class( my_class_t ), intent(inout) :: this integer, intent(in) :: value interface For submodule public module subroutine set_value_my_class_extended(this, value) Arguments Type Intent Optional Attributes Name class( my_class_extended_t ), intent(inout) :: this integer, intent(in) :: value Derived Types type, public :: my_struct_t Holds the integer value Components Type Visibility Attributes Name Initial integer, public :: value type, public :: my_class_t Holds the integer structure Type-Bound Procedures procedure\n                    ,                  public\n                  :: set_value => set_value_my_class Interface Sets the integer structure type, public, extends( my_class_t ) :: my_class_extended_t Adds capability to check if an integer has been stored Type-Bound Procedures procedure\n                    ,                  public\n                  :: set_value => set_value_my_class_extended Interface Stores integer and records that this storage happened procedure\n                    ,                  public\n                  :: is_set Interface Has an integer been stored yet?","tags":"","loc":"module/types_mod.html"},{"title":"types_submod – FORD Fortran project","text":"First FORD Fortran derived types sub module Uses Ancestors: types_mod Contents None","tags":"","loc":"module/types_submod.html"},{"title":"main – FORD Fortran project","text":"Uses a_mod types_mod FORD autodoc exerciser program Contents Variables int_value stored_num Functions write_main_fcn Subroutines write_main Variables Type Attributes Name Initial integer :: int_value type( my_class_extended_t ) :: stored_num stores integer Functions function write_main_fcn (output) Write output from a main program function Read more… Arguments Type Intent Optional Attributes Name character(len=*), intent(in) :: output What to output Return Value integer Just wanted a function. Return value not meaningful. Subroutines subroutine write_main (output) Write output from a main program subroutine Read more… Arguments Type Intent Optional Attributes Name character(len=*), intent(in) :: output What to output","tags":"","loc":"program/main.html"},{"title":"a_module.F90 – FORD Fortran project","text":"Contents Modules a_mod Source Code a_module.F90 Source Code !> Fortran module module a_mod implicit none !> not used but want example of module-level vairable integer :: a_mod_int_value contains !> Write output from an a_mod module subroutine subroutine write_a_mod ( output ) !> What to output character ( len =* ), intent ( in ) :: output write ( * , * ) \"write_a_mod: \" , output end subroutine write_a_mod !> Write output from an a_mod module function function write_a_mod_fcn ( output ) !> Just wanted a function. Return value not meaningful. integer :: write_a_mod_fcn !> What to output character ( len =* ), intent ( in ) :: output write ( * , * ) \"write_a_mod_fcn: \" , output write_a_mod_fcn = 2 end function write_a_mod_fcn end module a_mod","tags":"","loc":"sourcefile/a_module.f90.html"},{"title":"main.F90 – FORD Fortran project","text":"Contents Programs main Source Code main.F90 Source Code !> FORD autodoc exerciser program program main use a_mod use types_mod implicit none integer :: int_value type ( my_class_extended_t ) :: stored_num !! stores integer if ( stored_num % is_set ()) then write ( * , * ) \"number stored\" else write ( * , * ) \"number not stored\" end if ! This is just a normal comment that will not be in autodoc ! Exercising a_mod module call write_main ( \"World!\" ) int_value = write_main_fcn ( \"there!\" ) call write_a_mod ( \"Aphrodite!\" ) int_value = write_a_mod_fcn ( \"here!\" ) ! This is just a normal comment that will not be in autodoc ! Exercising types_mod module call stored_num % set_value ( int_value ) if ( stored_num % is_set ()) then write ( * , * ) \"number stored\" else write ( * , * ) \"number not stored\" end if contains !> Write output from a main program subroutine !! !!   output   [in]    string to output subroutine write_main ( output ) !> What to output character ( len =* ), intent ( in ) :: output write ( * , * ) \"write_main: \" , output end subroutine write_main !> Write output from a main program function !! !!   output   [in]    string to output function write_main_fcn ( output ) !> Just wanted a function. Return value not meaningful. integer :: write_main_fcn !> What to output character ( len =* ), intent ( in ) :: output write ( * , * ) \"write_main_fcn: \" , output write_main_fcn = 1 end function write_main_fcn end program main","tags":"","loc":"sourcefile/main.f90.html"},{"title":"types_mod.F90 – FORD Fortran project","text":"Contents Modules types_mod Source Code types_mod.F90 Source Code !> Module with a submodule module types_mod implicit none !> Holds the integer value type my_struct_t integer :: value end type my_struct_t !> Holds the integer structure type my_class_t private type ( my_struct_t ) :: int_struct contains !> Sets the integer structure procedure :: set_value => set_value_my_class end type my_class_t !> Adds capability to check if an integer has been stored type , extends ( my_class_t ) :: my_class_extended_t private !> integer has not been stored = .FALSE. (default), has been stored = .TRUE. logical :: value_set = . FALSE . contains !> Stores integer and records that this storage happened procedure :: set_value => set_value_my_class_extended !> Has an integer been stored yet? procedure :: is_set end type my_class_extended_t !> For submodule interface module subroutine set_value_my_class ( this , value ) class ( my_class_t ), intent ( inout ) :: this integer , intent ( in ) :: value end subroutine set_value_my_class module subroutine set_value_my_class_extended ( this , value ) class ( my_class_extended_t ), intent ( inout ) :: this integer , intent ( in ) :: value end subroutine set_value_my_class_extended module function is_set ( this ) logical :: is_set class ( my_class_extended_t ), intent ( in ) :: this end function is_set end interface end module types_mod","tags":"","loc":"sourcefile/types_mod.f90.html"},{"title":"types_submod.F90 – FORD Fortran project","text":"Contents Submodules types_submod Source Code types_submod.F90 Source Code !> First FORD Fortran derived types sub module submodule ( types_mod ) types_submod contains module subroutine set_value_my_class ( this , value ) class ( my_class_t ), intent ( inout ) :: this integer , intent ( in ) :: value this % int_struct % value = value end subroutine set_value_my_class module subroutine set_value_my_class_extended ( this , value ) class ( my_class_extended_t ), intent ( inout ) :: this integer , intent ( in ) :: value call this % my_class_t % set_value ( value ) this % value_set = . TRUE . end subroutine set_value_my_class_extended module function is_set ( this ) logical :: is_set class ( my_class_extended_t ), intent ( in ) :: this is_set = this % value_set end function is_set end submodule types_submod","tags":"","loc":"sourcefile/types_submod.f90.html"}]}