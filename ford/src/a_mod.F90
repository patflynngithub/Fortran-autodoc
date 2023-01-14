!> Fortran module with module-level variable and procedures
module a_mod

  use kinds_mod

  implicit none

  complex, private :: a_private_variable
   
  ! --------------------------------------------------------------------------
  ! declarations duplicated in post-doc comments so see how the autodoc program
  ! processes the declarations
  ! ---------------------------------------------------------------------------
  logical :: a_mod_bool1                     !! logical :: a_mod_bool1
  logical :: a_mod_bool2                     !! logical :: a_mod_bool2
  logical :: a_mod_bool3                     !! logical :: a_mod_bool3
  logical :: a_mod_bool4                     !! logical :: a_mod_bool4
  logical :: a_mod_boolarray1(2)             !! logical :: a_mod_boolarray1(2)
  logical, dimension(3) :: a_mod_boolarray2  !! logical, dimension(3) :: a_mod_boolarray2

  integer :: a_mod_int1                    !! integer :: a_mod_int1
  integer :: a_mod_int2                    !! integer :: a_mod_int2
  integer :: a_mod_int3                    !! integer :: a_mod_int3
  integer :: a_mod_int4                    !! integer :: a_mod_int4
  integer(8) :: a_mod_int5                 !! integer(8) :: a_mod_int5
  integer(kind=long) :: a_mod_int6         !! integer(kind=long) :: a_mod_int6
  integer :: a_mod_intarray1(3)            !! integer :: a_mod_intarray1(3) 
  integer, dimension(4) :: a_mod_intarray2 !! integer, dimension(4) :: a_mod_intarray2 

  real :: a_mod_real1                    !! real :: a_mod_real1
  real :: a_mod_real2                    !! real :: a_mod_real2
  real :: a_mod_real3                    !! real :: a_mod_real3
  real :: a_mod_real4                    !! real :: a_mod_real4
  real(8) :: a_mod_real5                 !! real(8) :: a_mod_real5
  real(kind=dp) :: a_mod_real6           !! real(kind=dp) :: a_mod_real6
  real :: a_mod_realarray1(5)            !! real :: a_mod_realarray1(5)
  real, dimension(6) :: a_mod_realarray2 !! real, dimension(6) :: a_mod_realarray2

  character :: a_mod_a_char                         !! character :: a_mod_a_char
  character(20) :: a_mod_string1                    !! character(20) :: a_mod_string1
  character(21) :: a_mod_string2                    !! character(21) :: a_mod_string2
  character(22), dimension(2) :: a_mod_stringarray1 !! character(22), dimension(2) :: a_mod_stringarray1
  character(len=23) :: a_mod_stringarray2(3)        !! character(len=23) :: a_mod_stringarray2(3)
    
contains

!> a_mod module subroutine that exercises the dummy variables for autodoc program
!! 
!!   output   [in]    string to output
subroutine a_mod_dummy_vars_sub(bool1, bool2, bool3, bool4, boolarray1, boolarray2,               &
                               int1, int2, int3, int4, int5, int6, intarray1, intarray2,         &
                               real1, real2, real3, real4, real5, real6, realarray1, realarray2, &
                               a_char, string1, string2, stringarray1, stringarray2,             &
                               output)
    implicit none
#include "dummy_vars.inc"
      
    write(*,*) "a_mod_dummy_vars_sub: ", output
end subroutine a_mod_dummy_vars_sub

!> a_mod module function (return type defined in body) that exercises the dummy variables for autodoc program
!!
!! Defines return type in body of function
!!
!!   output   [in]    string to output
function a_mod_dummy_vars_fcn1(bool1, bool2, bool3, bool4, boolarray1, boolarray2,               &
                              int1, int2, int3, int4, int5, int6, intarray1, intarray2,         &
                              real1, real2, real3, real4, real5, real6, realarray1, realarray2, &
                              a_char, string1, string2, stringarray1, stringarray2,             &
                              output)

    implicit none

    !> Just wanted a function. Return value not meaningful.
    integer :: a_mod_dummy_vars_fcn1
#include "dummy_vars.inc"
    
    write(*,*) "a_mod_dummy_vars_fcn1: ", output
      
    a_mod_dummy_vars_fcn1 = 1
    
end function a_mod_dummy_vars_fcn1

!> a_mod module function (return type defined in first line) that exercises the dummy variables for autodoc program
!!
!! Defines return type in first line of function
!!
!!   output   [in]    string to output
integer function a_mod_dummy_vars_fcn2(bool1, bool2, bool3, bool4, boolarray1, boolarray2,               &
                                      int1, int2, int3, int4, int5, int6, intarray1, intarray2,         &
                                      real1, real2, real3, real4, real5, real6, realarray1, realarray2, &
                                      a_char, string1, string2, stringarray1, stringarray2,             &
                                      output)

    implicit none
                   
#include "dummy_vars.inc"

    write(*,*) "a_mod_dummy_vars_fcn2: ", output
      
    a_mod_dummy_vars_fcn2 = 2
    
end function a_mod_dummy_vars_fcn2

!> a_mod module function (return type and result name defined in first line) that exercises the dummy variables for autodoc program
!!
!! Defines return type and alternate result name  in first line of function
!!
!!   output   [in]    string to output
integer function a_mod_dummy_vars_fcn3(bool1, bool2, bool3, bool4, boolarray1, boolarray2,               &
                                      int1, int2, int3, int4, int5, int6, intarray1, intarray2,         &
                                      real1, real2, real3, real4, real5, real6, realarray1, realarray2, &
                                      a_char, string1, string2, stringarray1, stringarray2,             &
                                      output) result(val)

    implicit none
                   
#include "dummy_vars.inc"

    write(*,*) "a_mod_dummy_vars_fcn3: ", output
      
    val = 3
    
end function a_mod_dummy_vars_fcn3

end module a_mod

