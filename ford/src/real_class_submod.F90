!> Real class submodule (no redeclaration of module declarations)
submodule (classes_mod) real_class_submod 

contains

  module procedure set_value_real_class
     this%real_struct%value = value
  end procedure set_value_real_class
  
  module procedure set_value_real_class_extended
     call this%real_class_t%set_value(value)
     this%value_set = .TRUE.
  end procedure set_value_real_class_extended

  module procedure is_set_real_class_extended
     is_set_real_class_extended = this%value_set
  end procedure is_set_real_class_extended

end submodule real_class_submod
