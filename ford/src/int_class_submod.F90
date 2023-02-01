!! int_class_submod submodule file

!> Integer class submodule (redeclares module declarations)
submodule (classes_mod) int_class_submod

contains

  module subroutine set_value_int_class(this, value)
     class(int_class_t), intent(inout) :: this
     integer, intent(in)               :: value
     
     this%int_struct%value = value
  end subroutine set_value_int_class
  
  module subroutine set_value_int_class_extended(this, value)
     class(int_class_extended_t), intent(inout) :: this
     integer, intent(in)                        :: value
          
     call this%int_class_t%set_value(value)
     this%value_set = .TRUE.
  end subroutine set_value_int_class_extended

  module function is_set_int_class_extended(this)
     logical                                 :: is_set_int_class_extended
     class(int_class_extended_t), intent(in) :: this

     is_set_int_class_extended = this%value_set
  end function is_set_int_class_extended

end submodule int_class_submod
