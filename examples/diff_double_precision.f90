! diff_double_precision.f90 --
!     Show the difference between default literal reals and double precision literals
!
program diff_double_precision
    implicit none

    double precision, parameter :: pi_1 = 3.141592653589793238462643
    double precision, parameter :: pi_2 = 3.141592653589793238462643d0

    write(*,*) 'Difference: ', pi_1 - pi_2
end program diff_double_precision
