    logical :: bool1                     !! logical :: bool1
    logical :: bool2                     !! logical :: bool2
    logical :: bool3                     !! logical :: bool3
    logical :: bool4                     !! logical :: bool4
    logical :: boolarray1(2)             !! logical :: boolarray1(2)
    logical, dimension(3) :: boolarray2  !! logical, dimension(3)

    integer :: int1
    integer :: int2
    integer :: int3
    integer :: int4
    integer :: intarray1(3)
    integer, dimension(4) :: intarray2 

    real :: real1
    real :: real2
    real :: real3
    real :: real4
    real :: realarray1(5)
    real, dimension(6) :: realarray2

    character :: a_char
    character(20) :: string1
    character(21) :: string2
    character(22), dimension(2) :: stringarray1
    character(len=23) :: stringarray2(3)
    !> What to output
    character(10) :: output

