! implied_do.f90 --
!     Implied DO-loops in DATA statements
!
program implied_do
    implicit none

    integer i
    real x(100)

    data (x(i), i = 1,100) / 100*1.0 /

    write(*,*) x

end program implied_do
