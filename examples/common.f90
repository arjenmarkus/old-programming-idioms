! common.f90 --
!     Program that relies on a BLOCK DATA program unit
!
PROGRAM PRINTX
COMMON /ABC/ X
WRITE(*,*) 'Expected value of X = 42:'
WRITE(*,*) 'X = ', X
END
