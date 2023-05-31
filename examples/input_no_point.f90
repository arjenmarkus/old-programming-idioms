! input_no_point.f90 --
!     Demonstrate the effect of using an input format with a decimal point
!     on input that does not have one.
!
program input_no_point
    implicit none

    real :: value

    !
    ! Open the file and read the numbers
    !
    open( 10, file = 'input_no_point.inp' )

    read( 10, '(f5.0)' ) value; write(*,*) 'Value (f5.0):', value
    read( 10, '(f5.1)' ) value; write(*,*) 'Value (f5.1):', value
    read( 10, '(f5.2)' ) value; write(*,*) 'Value (f5.2):', value
    read( 10, '(f5.3)' ) value; write(*,*) 'Value (f5.3):', value

    close( 10 )
end program input_no_point
