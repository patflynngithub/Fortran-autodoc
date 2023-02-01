!! Main program file

!> FORD Fortran autodoc exerciser main program
program main

  use kinds_mod
  use a_mod 
  use classes_mod
  
  implicit none

  interface 
    subroutine non_module_file_procedure(int_value)
      integer :: int_value
    end subroutine non_module_file_procedure
  end interface

  !> pre-doc comment
  logical :: logical_value
  integer :: int_value  !! post-doc comment
  !> pre-doc comment
  real    :: real_value !! post-doc comment

  ! --------------------------------------------------------------------------
  ! declarations duplicated in post-doc comments so see how the autodoc program
  ! processes the declarations
  ! ---------------------------------------------------------------------------
  logical :: bool1                     !! logical :: bool1
  logical :: bool2                     !! logical :: bool2
  logical :: bool3                     !! logical :: bool3
  logical :: bool4                     !! logical :: bool4
  logical :: boolarray1(2)             !! logical :: boolarray1(2)
  logical, dimension(3) :: boolarray2  !! logical, dimension(3) :: boolarray2

  integer :: int1                    !! integer :: int1
  integer :: int2                    !! integer :: int2
  integer :: int3                    !! integer :: int3
  integer :: int4                    !! integer :: int4
  integer(8) :: int5                 !! integer(8) :: int5
  integer(kind=long) :: int6         !! integer(kind=long) :: int6
  integer :: intarray1(3)            !! integer :: intarray1(3) 
  integer, dimension(4) :: intarray2 !! integer, dimension(4) :: intarray2 

  real :: real1                    !! real :: real1
  real :: real2                    !! real :: real2
  real :: real3                    !! real :: real3
  real :: real4                    !! real :: real4
  real(8) :: real5                 !! real(8) :: real5
  real(kind=dp) :: real6           !! real(kind=dp) :: real6
  real :: realarray1(5)            !! real :: realarray1(5)
  real, dimension(6) :: realarray2 !! real, dimension(6) :: realarray2

  character :: a_char                         !! character :: a_char
  character(20) :: string1                    !! character(20) :: string1
  character(21) :: string2                    !! character(21) :: string2
  character(22), dimension(2) :: stringarray1 !! character(22), dimension(2) :: stringarray1
  character(len=23) :: stringarray2(3)        !! character(len=23) :: stringarray2(3)

  !> pre-doc comment
  type(int_class_extended_t) :: stored_int  !! post-doc comment
  !> pre-doc comment
  type(real_class_extended_t) :: stored_real  !! post-doc comment
  !> pre-doc comment
  type(complex_class_extended_t) :: stored_complex  !! post-doc comment
  
  ! -------------------------------------------
  !
  ! Classes module method calls
  !
  
  if (stored_int%is_set()) then
     write (*,*) "int stored"
  else
     write (*,*) "int not stored"  
  end if

  if (stored_real%is_set()) then
     write (*,*) "real stored"
  else
     write (*,*) "real not stored"  
  end if

  if (stored_complex%is_set()) then
     write (*,*) "complex stored"
  else
     write (*,*) "complex not stored"  
  end if

  ! This is just a normal comment that will not be in autodoc
  write (*,*) "Storing integer"
  call stored_int%set_value(int_value)
  if (stored_int%is_set()) then
     write (*,*) "int stored"
  else
     write (*,*) "int not stored"  
  end if

  write (*,*) "Storing real"
  call stored_real%set_value(3.14)
  if (stored_real%is_set()) then
     write (*,*) "real stored"
  else
     write (*,*) "real not stored"  
  end if

  write (*,*) "Storing complex"
  call stored_complex%set_value(cmplx(1.0,2.0))
  if (stored_complex%is_set()) then
     write (*,*) "complex stored"
  else
     write (*,*) "complex not stored"  
  end if

  ! -------------------------------------------
  !
  ! Main program procedure calls
  !
  
  ! This is just a normal comment that will not be in autodoc
  call main_dummy_vars_sub(bool1, bool2, bool3, bool4, boolarray1, boolarray2,               &
                           int1, int2, int3, int4, int5, int6, intarray1, intarray2,         &
                           real1, real2, real3, real4, real5, real6, realarray1, realarray2, &
                           a_char, string1, string2, stringarray1, stringarray2,             &
                           "Hello")

  ! This is just a normal comment that will not be in autodoc
  int_value = main_dummy_vars_fcn1(bool1, bool2, bool3, bool4, boolarray1, boolarray2,               &
                                   int1, int2, int3, int4, int5, int6, intarray1, intarray2,         &
                                   real1, real2, real3, real4, real5, real6, realarray1, realarray2, &
                                   a_char, string1, string2, stringarray1, stringarray2,             &
                                   "there.")

  ! This is just a normal comment that will not be in autodoc
  int_value = main_dummy_vars_fcn2(bool1, bool2, bool3, bool4, boolarray1, boolarray2,               &
                                   int1, int2, int3, int4, int5, int6, intarray1, intarray2,         &
                                   real1, real2, real3, real4, real5, real6, realarray1, realarray2, &
                                   a_char, string1, string2, stringarray1, stringarray2,             &
                                   "How")

  ! This is just a normal comment that will not be in autodoc
  int_value = main_dummy_vars_fcn3(bool1, bool2, bool3, bool4, boolarray1, boolarray2,               &
                                   int1, int2, int3, int4, int5, int6, intarray1, intarray2,         &
                                   real1, real2, real3, real4, real5, real6, realarray1, realarray2, &
                                   a_char, string1, string2, stringarray1, stringarray2,             &
                                   "are")

  ! -------------------------------------------
  !
  ! a_mod module procedure calls
  !
  
  ! This is just a normal comment that will not be in autodoc
  call a_mod_dummy_vars_sub(bool1, bool2, bool3, bool4, boolarray1, boolarray2,               &
                            int1, int2, int3, int4, int5, int6, intarray1, intarray2,         &
                            real1, real2, real3, real4, real5, real6, realarray1, realarray2, &
                            a_char, string1, string2, stringarray1, stringarray2,             &
                            "you")

  ! This is just a normal comment that will not be in autodoc
  int_value = a_mod_dummy_vars_fcn1(bool1, bool2, bool3, bool4, boolarray1, boolarray2,               &
                                    int1, int2, int3, int4, int5, int6, intarray1, intarray2,         &
                                    real1, real2, real3, real4, real5, real6, realarray1, realarray2, &
                                    a_char, string1, string2, stringarray1, stringarray2,             &
                                    "today?")

  ! This is just a normal comment that will not be in autodoc
  int_value = a_mod_dummy_vars_fcn2(bool1, bool2, bool3, bool4, boolarray1, boolarray2,               &
                                    int1, int2, int3, int4, int5, int6, intarray1, intarray2,         &
                                    real1, real2, real3, real4, real5, real6, realarray1, realarray2, &
                                    a_char, string1, string2, stringarray1, stringarray2,             &
                                    "What's")

  ! This is just a normal comment that will not be in autodoc
  int_value = a_mod_dummy_vars_fcn3(bool1, bool2, bool3, bool4, boolarray1, boolarray2,               &
                                    int1, int2, int3, int4, int5, int6, intarray1, intarray2,         &
                                    real1, real2, real3, real4, real5, real6, realarray1, realarray2, &
                                    a_char, string1, string2, stringarray1, stringarray2,             &
                                    "up?")

  ! -------------------------------------------
  !
  ! A non-module file procedure call 
  !
  
  call non_module_file_procedure(10)

contains

!> Main program subroutine that exercises the dummy variables for autodoc program
!! 
!!   output   [in]    string to output
subroutine main_dummy_vars_sub(bool1, bool2, bool3, bool4, boolarray1, boolarray2,               &
                               int1, int2, int3, int4, int5, int6, intarray1, intarray2,         &
                               real1, real2, real3, real4, real5, real6, realarray1, realarray2, &
                               a_char, string1, string2, stringarray1, stringarray2,             &
                               output)
    implicit none
#include "dummy_vars.inc"
      
    write(*,*) "main_dummy_vars_sub: ", output
end subroutine main_dummy_vars_sub

!> Main program function (return type defined in body) that exercises the dummy variables for autodoc program
!!
!! Defines return type in body of function
!!
!!   output   [in]    string to output
function main_dummy_vars_fcn1(bool1, bool2, bool3, bool4, boolarray1, boolarray2,               &
                              int1, int2, int3, int4, int5, int6, intarray1, intarray2,         &
                              real1, real2, real3, real4, real5, real6, realarray1, realarray2, &
                              a_char, string1, string2, stringarray1, stringarray2,             &
                              output)

    implicit none

    !> Just wanted a function. Return value not meaningful.
    integer :: main_dummy_vars_fcn1
#include "dummy_vars.inc"
    
    write(*,*) "main_dummy_vars_fcn1: ", output
      
    main_dummy_vars_fcn1 = 1
    
end function main_dummy_vars_fcn1

!> Main program function (return type defined in first line) that exercises the dummy variables for autodoc program
!!
!! Defines return type in first line of function
!!
!!   output   [in]    string to output
integer function main_dummy_vars_fcn2(bool1, bool2, bool3, bool4, boolarray1, boolarray2,               &
                                      int1, int2, int3, int4, int5, int6, intarray1, intarray2,         &
                                      real1, real2, real3, real4, real5, real6, realarray1, realarray2, &
                                      a_char, string1, string2, stringarray1, stringarray2,             &
                                      output)

    implicit none
                   
#include "dummy_vars.inc"

    write(*,*) "main_dummy_vars_fcn2: ", output
      
    main_dummy_vars_fcn2 = 2
    
end function main_dummy_vars_fcn2

!> Main program function (return type and result name defined in first line) that exercises the dummy variables for autodoc program
!!
!! Defines return type and alternate result name  in first line of function
!!
!!   output   [in]    string to output
integer function main_dummy_vars_fcn3(bool1, bool2, bool3, bool4, boolarray1, boolarray2,               &
                                      int1, int2, int3, int4, int5, int6, intarray1, intarray2,         &
                                      real1, real2, real3, real4, real5, real6, realarray1, realarray2, &
                                      a_char, string1, string2, stringarray1, stringarray2,             &
                                      output) result(val)

    implicit none
                   
#include "dummy_vars.inc"

    write(*,*) "main_dummy_vars_fcn3: ", output
      
    val = 3
    
end function main_dummy_vars_fcn3

end program main
