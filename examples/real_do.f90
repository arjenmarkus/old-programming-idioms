! real_do.f90 --
!     Show the effect of using a REAL loop variable
!
program real_do
    implicit none

    integer :: i, n
    real    :: r

    do i = 1,10
        n = 0
        do r = 0.0, 1.0*i, 0.1*i
            write(*,*) r
            n = n + 1
        enddo
        write(*,*) 'Number of iterations: ', n
    enddo
end program real_do
