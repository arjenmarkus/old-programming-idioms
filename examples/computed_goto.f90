! computed_goto.f90 --
!     Illustrate the computed GOTO via a loop
!     Deliberately use values beyond the range of the GOTO list
!
program computed_goto
    implicit none

    integer :: jmp

    do jmp = 0,4
        write(*,*) 'Current iteration: ', jmp

        goto (100, 200, 300 ) jmp

        write(*,*) 'Directly after the GOTO'

100     continue
        write(*,*) 'Label 100'
        goto 400

200     continue
        write(*,*) 'Label 200'
        goto 400

300     continue
        write(*,*) 'Label 300'

400     continue
        write(*,*) 'Arrived at 400'
    enddo
end program computed_goto
