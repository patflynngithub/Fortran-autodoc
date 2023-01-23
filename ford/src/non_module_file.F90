!! This is a non-module subprogram file containing a subroutine

!> This is the subroutine in the non-module subprogram file
subroutine non_module_file_procedure(int_value)

implicit none

integer :: int_value

write (*,*) "Got to non_module_file_procedure()"

end subroutine non_module_file_procedure
