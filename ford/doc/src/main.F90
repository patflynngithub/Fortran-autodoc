!> FORD autodoc exerciser program
program main

  use kinds_mod
  use a_mod
!  use classes_mod
  
  implicit none

  !> pre-doc comment
  logical :: logical_value
  integer :: int_value  !! post-doc comment

#include "local_vars.inc"

!   !> pre-doc comment
!  type(my_class_extended_t) :: stored_num  !! post-doc comment
  
!  if (stored_num%is_set()) then
!     write (*,*) "number stored"
!  else
!     write (*,*) "number not stored"  
!  end if
  
  ! This is just a normal comment that will not be in autodoc
  ! Exercising a_mod module
  call main_dummy_vars_sub(bool1, bool2, bool3, bool4, boolarray1, boolarray2,               &
                           int1, int2, int3, int4, int5, int6, intarray1, intarray2,         &
                           real1, real2, real3, real4, real5, real6, realarray1, realarray2, &
                           a_char, string1, string2, stringarray1, stringarray2,             &
                           "Hello")
  int_value = main_dummy_vars_fcn(bool1, bool2, bool3, bool4, boolarray1, boolarray2,               &
                                  int1, int2, int3, int4, int5, int6, intarray1, intarray2,         &
                                  real1, real2, real3, real4, real5, real6, realarray1, realarray2, &
                                  a_char, string1, string2, stringarray1, stringarray2,             &
                                  "Hello")

  call write_a_mod("Aphrodite!")
  int_value = write_a_mod_fcn("here!")

!   ! This is just a normal comment that will not be in autodoc
!   ! Exercising types_mod module
!   call stored_num%set_value(int_value)
!   if (stored_num%is_set()) then
!      write (*,*) "number stored"
!   else
!      write (*,*) "number not stored"  
!   end if
  
contains

!> Write output from a main program subroutine
!!
!!   output   [in]    string to output
subroutine main_dummy_vars_sub(bool1, bool2, bool3, bool4, boolarray1, boolarray2,               &
                               int1, int2, int3, int4, int5, int6, intarray1, intarray2,         &
                               real1, real2, real3, real4, real5, real6, realarray1, realarray2, &
                               a_char, string1, string2, stringarray1, stringarray2,             &
                               output)
    implicit none
#include "dummy_vars.inc"
      
    write(*,*) "write_main: ", output
end subroutine main_dummy_vars_sub

!> Write output from a main program function
!!
!!   output   [in]    string to output
function main_dummy_vars_fcn(bool1, bool2, bool3, bool4, boolarray1, boolarray2,               &
                             int1, int2, int3, int4, int5, int6, intarray1, intarray2,         &
                             real1, real2, real3, real4, real5, real6, realarray1, realarray2, &
                             a_char, string1, string2, stringarray1, stringarray2,             &
                             output)

    implicit none

    !> Just wanted a function. Return value not meaningful.
    integer :: main_dummy_vars_fcn
#include "dummy_vars.inc"
    
      
    write(*,*) "write_main_fcn: ", output
    
    main_dummy_vars_fcn = 1
    
end function main_dummy_vars_fcn

end program main
