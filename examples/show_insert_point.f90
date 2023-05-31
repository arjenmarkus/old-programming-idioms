! show_insert_point.f90 --
!     Simple illustration of the effect of input formats
!     on input strings without a decimal point
!
program show_insert_point
    implicit none

    real :: x
    character(len=10) :: string

    string = '1234'

    read( string, '(f4.0)' ) x
    write(*,*) x

    read( string, '(f4.2)' ) x
    write(*,*) x
end program show_insert_point
