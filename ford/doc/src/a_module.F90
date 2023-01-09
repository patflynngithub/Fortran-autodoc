!> Fortran module
module a_mod

  implicit none
 
  !> not used but want example of module-level vairable 
  integer :: a_mod_int_value
    
contains

!> Write output from an a_mod module subroutine
subroutine write_a_mod(output)
    
    !> What to output
    character(len=*), intent(in) :: output
      
    write(*,*) "write_a_mod: ", output
    
end subroutine write_a_mod

!> Write output from an a_mod module function
function write_a_mod_fcn(output)
    !> Just wanted a function. Return value not meaningful.
    integer :: write_a_mod_fcn
    
    !> What to output
    character(len=*), intent(in) :: output
      
    write(*,*) "write_a_mod_fcn: ", output
    
    write_a_mod_fcn = 2
    
end function write_a_mod_fcn

end module a_mod
