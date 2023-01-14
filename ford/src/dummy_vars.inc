    logical :: bool1                                !! logical :: bool1
    logical, intent(in) :: bool2                    !! logical, intent(in) :: bool2
    logical, intent(out) :: bool3                   !! logical, intent(out) :: bool3
    logical, intent(inout) :: bool4                 !! logical, intent(inout) :: bool4
    logical, intent(inout) :: boolarray1(2)         !! logical, intent(inout) :: boolarray1(2)
    logical, dimension(3), intent(in) :: boolarray2 !! logical, dimension(3), intent(in) :: boolarray2

    integer :: int1                                !! integer :: int1
    integer, intent(in) :: int2                    !! integer, intent(in) :: int2
    integer, intent(out) :: int3                   !! integer, intent(out) :: int3
    integer, intent(inout) :: int4                 !! integer, intent(inout) :: int4
    integer(8), intent(in) :: int5                 !! integer(8), intent(in) :: int5
    integer(kind=long), intent(in) :: int6         !! integer(kind=long), intent(in) :: int6
    integer, intent(inout) :: intarray1(3)         !! integer, intent(inout) :: intarray1(3)
    integer, dimension(4), intent(in) :: intarray2 !! integer, dimension(4), intent(in) :: intarray2 

    real :: real1                                !! real :: real1
    real, intent(in) :: real2                    !! real, intent(in) :: real2
    real, intent(out) :: real3                   !! real, intent(out) :: real3
    real, intent(inout) :: real4                 !! real, intent(inout) :: real4
    real(8), intent(in) :: real5                 !! real(8), intent(in) :: real5
    real(kind=dp), intent(in) :: real6           !! real(kind=dp), intent(in) :: real6
    real, intent(inout) :: realarray1(5)         !! real, intent(inout) :: realarray1(5)
    real, dimension(6), intent(in) :: realarray2 !! real, dimension(6), intent(in) :: realarray2

    character, intent(in) :: a_char                            !! character, intent(in) :: a_char
    character(20), intent(in) :: string1                       !! character(20), intent(in) :: string1
    character(21), intent(out) :: string2                      !! character(21), intent(out) :: string2
    character(22), dimension(2), intent(inout) :: stringarray1 !! character(22), dimension(2), intent(inout) :: stringarray1
    character(len=23), intent(inout) :: stringarray2(3)        !! character(len=23), intent(inout) :: stringarray2(3)
    !> What to output
    character(len=*), intent(in) :: output                     !! character(len=*), intent(in) :: output

