!> Struct derived types module
module types_mod

  implicit none

  !> Holds an integer value
  type int_struct_t
    integer :: value
  end type int_struct_t

  !> Holds a real value
  type real_struct_t
    real :: value
  end type real_struct_t

  !> Holds a complex value
  type complex_struct_t
    complex :: value
  end type complex_struct_t

end module types_mod
