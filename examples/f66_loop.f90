! f66_loop.f90 --
!     Illustrate the FORTRAN 66 feature that a loop is always run at once
!     Build this program with and without the FORTRAN 66 semantics option.
!
program f66_loop
    implicit none

    integer :: i

    !
    ! In FORTRAN 66 each loop is run at least once
    !
    do i = 1,0
        write(*,*) 'FORTRAN 66: ', i
    enddo

    write(*,*) 'Current value of i:', i
end program f66_loop
