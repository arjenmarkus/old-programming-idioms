! three_way_if.f90 --
!     Illustrate the three-way IF via a loop
!
program three_way_if
    implicit none

    integer :: ivalue

    do ivalue = -2,2
        write(*,*) 'Current iteration: ', ivalue

        if ( ivalue ) 100, 200, 300

100     continue
        write(*,*) 'Value is negative - ', ivalue
        goto 400

200     continue
        write(*,*) 'Value is zero - ', ivalue
        goto 400

300     continue
        write(*,*) 'Value is positive - ', ivalue

400     continue
        write(*,*) 'Arrived at 400'
    enddo
end program three_way_if
