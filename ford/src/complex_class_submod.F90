!> Complex class submodule (no redeclaration of module declarations)
submodule (classes_mod) complex_class_submod 

contains

  module procedure set_value_complex_class
     this%complex_struct%value = value
  end procedure set_value_complex_class
  
  module procedure set_value_complex_class_extended
     call this%complex_class_t%set_value(value)
     this%value_set = .TRUE.
  end procedure set_value_complex_class_extended

  module procedure is_set_complex_class_extended
     is_set_complex_class_extended = this%value_set
  end procedure is_set_complex_class_extended

end submodule complex_class_submod
