!> Class derived types module
module classes_mod

  use types_mod

  implicit none

  ! --------------------------------------------------------------------------
  ! Integer class
  ! 

  !> Holds the integer structure
  type int_class_t
    private
    type(int_struct_t) :: int_struct
  contains
    !> Sets the integer structure
    procedure :: set_value => set_value_int_class
  end type int_class_t

  !> Adds capability to check if an integer has been stored
  type, extends(int_class_t) :: int_class_extended_t
    private
    !> integer has not been stored = .FALSE. (default), has been stored = .TRUE.
    logical :: value_set = .FALSE.
  contains
    !> Stores integer and records that this storage happened
    procedure :: set_value => set_value_int_class_extended
    !> Has an integer been stored yet?
    procedure :: is_set => is_set_int_class_extended
  end type int_class_extended_t    

  ! --------------------------------------------------------------------------
  ! Real class
  ! 

  !> Holds the real structure
  type real_class_t
    private
    type(real_struct_t) :: real_struct
  contains
    !> Sets the real structure
    procedure :: set_value => set_value_real_class
  end type real_class_t

  !> Adds capability to check if a real has been stored
  type, extends(real_class_t) :: real_class_extended_t
    private
    !> real has not been stored = .FALSE. (default), has been stored = .TRUE.
    logical :: value_set = .FALSE.
  contains
    !> Stores real and records that this storage happened
    procedure :: set_value => set_value_real_class_extended
    !> Has a real been stored yet?
    procedure :: is_set => is_set_real_class_extended
  end type real_class_extended_t    

  ! --------------------------------------------------------------------------
  ! Complex class
  ! 

#define _TYPEDEF
#include "complex_type.inc"
#undef _TYPEDEF

!> For submodule
interface

  ! --------------------------------------------------------------------------
  ! Integer class
  ! 

  module subroutine set_value_int_class(this, value)  
     class(int_class_t), intent(inout) :: this
     integer, intent(in)               :: value
  end subroutine set_value_int_class
  
  module subroutine set_value_int_class_extended(this, value)
  
     class(int_class_extended_t), intent(inout) :: this
     integer, intent(in)                        :: value
          
  end subroutine set_value_int_class_extended

  module function is_set_int_class_extended(this)
  
     logical                                 :: is_set_int_class_extended
     class(int_class_extended_t), intent(in) :: this

  end function is_set_int_class_extended

  ! --------------------------------------------------------------------------
  ! Real class
  ! 

  module subroutine set_value_real_class(this, value)  
     class(real_class_t), intent(inout) :: this
     real, intent(in)                   :: value
  end subroutine set_value_real_class
  
  module subroutine set_value_real_class_extended(this, value)
  
     class(real_class_extended_t), intent(inout) :: this
     real, intent(in)                         :: value
          
  end subroutine set_value_real_class_extended

  module function is_set_real_class_extended(this)
  
     logical                                  :: is_set_real_class_extended
     class(real_class_extended_t), intent(in) :: this

  end function is_set_real_class_extended

  ! --------------------------------------------------------------------------
  ! Complex class
  ! 

#include "complex_type.inc"

end interface

end module classes_mod
