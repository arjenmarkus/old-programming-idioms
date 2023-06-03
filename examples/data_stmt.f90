! data_stmt.f90 --
!     The effect of a DATA statement on the size of the object file
!
program data_stmt
    implicit none

    integer :: i
    real    :: array(1000000)

!!    data (array(i), i = 1,size(array),2) / 500000*1.0 /
!!    data (array(i), i = 2,size(array),2) / 500000*2.0 /

    !
    ! Alternative
    !
    array(1::2) = 1.0
    array(2::2) = 2.0
    !

    write(*,*) sum(array)
end program data_stmt
