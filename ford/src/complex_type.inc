#ifdef _TYPEDEF

  !> Holds the complex structure
  type complex_class_t
    private
    type(complex_struct_t) :: complex_struct
  contains
    !> Sets the complex structure
    procedure :: set_value => set_value_complex_class
  end type complex_class_t

  !> Adds capability to check if a complex has been stored
  type, extends(complex_class_t) :: complex_class_extended_t
    private
    !> complex has not been stored = .FALSE. (default), has been stored = .TRUE.
    logical :: value_set = .FALSE.
  contains
    !> Stores complex and records that this storage happened
    procedure :: set_value => set_value_complex_class_extended
    !> Has a complex been stored yet?
    procedure :: is_set => is_set_complex_class_extended
  end type complex_class_extended_t    

#else

  module subroutine set_value_complex_class(this, value)  
     class(complex_class_t), intent(inout) :: this
     complex, intent(in)                   :: value
  end subroutine set_value_complex_class
  
  module subroutine set_value_complex_class_extended(this, value)
  
     class(complex_class_extended_t), intent(inout) :: this
     complex, intent(in)                            :: value
          
  end subroutine set_value_complex_class_extended

  module function is_set_complex_class_extended(this)
  
     logical                                     :: is_set_complex_class_extended
     class(complex_class_extended_t), intent(in) :: this

  end function is_set_complex_class_extended

#endif
