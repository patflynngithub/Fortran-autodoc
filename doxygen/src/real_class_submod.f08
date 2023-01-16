!> Real class submodule (redeclares module declarations)
submodule (classes_mod) real_class_submod

contains

  module subroutine set_value_real_class(this, value)
     class(real_class_t), intent(inout) :: this
     real, intent(in)               :: value
     
     this%real_struct%value = value
  end subroutine set_value_real_class
  
  module subroutine set_value_real_class_extended(this, value)
     class(real_class_extended_t), intent(inout) :: this
     real, intent(in)                        :: value
          
     call this%real_class_t%set_value(value)
     this%value_set = .TRUE.
  end subroutine set_value_real_class_extended

  module function is_set_real_class_extended(this)
     logical                                 :: is_set_real_class_extended
     class(real_class_extended_t), intent(in) :: this

     is_set_real_class_extended = this%value_set
  end function is_set_real_class_extended

end submodule real_class_submod
