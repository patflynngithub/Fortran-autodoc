!> FORD autodoc exerciser program
program main

  use a_mod
  use types_mod
  
  implicit none
  
  integer :: int_value
  type(my_class_extended_t) :: stored_num  !! stores integer
  
  if (stored_num%is_set()) then
     write (*,*) "number stored"
  else
     write (*,*) "number not stored"  
  end if
  
  ! This is just a normal comment that will not be in autodoc
  ! Exercising a_mod module
  call write_main("World!")
  int_value = write_main_fcn("there!")
  call write_a_mod("Aphrodite!")
  int_value = write_a_mod_fcn("here!")

  ! This is just a normal comment that will not be in autodoc
  ! Exercising types_mod module
  call stored_num%set_value(int_value)
  if (stored_num%is_set()) then
     write (*,*) "number stored"
  else
     write (*,*) "number not stored"  
  end if
  
contains

!> Write output from a main program subroutine
!!
!!   output   [in]    string to output
subroutine write_main(output)
    
    !> What to output
    character(len=*), intent(in) :: output
      
    write(*,*) "write_main: ", output
end subroutine write_main

!> Write output from a main program function
!!
!!   output   [in]    string to output
function write_main_fcn(output)

    !> Just wanted a function. Return value not meaningful.
    integer :: write_main_fcn
    
    !> What to output
    character(len=*), intent(in) :: output
      
    write(*,*) "write_main_fcn: ", output
    
    write_main_fcn = 1
    
end function write_main_fcn

end program main
