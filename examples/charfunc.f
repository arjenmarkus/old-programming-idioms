C charfunc.f --
C     Demonstrate the use of a character*(*) function
C
      PROGRAM CHARF

      CHARACTER*10 STRING

      STRING = 'ABC'
      CALL SUB1( STRING )
      CALL SUB2( STRING )

      END

      CHARACTER*(*) FUNCTION DOUBLE( STRING )
      CHARACTER*(*) STRING

      DOUBLE = STRING // STRING

      END

      SUBROUTINE SUB1( STR )
      CHARACTER*(*) STR
      EXTERNAL     DOUBLE
      CHARACTER*10 DOUBLE

      WRITE(6,'(3A)') 'Double a string: >>', DOUBLE(STR), '<<'
      END

      SUBROUTINE SUB2( STR )
      CHARACTER*(*) STR
      EXTERNAL     DOUBLE
      CHARACTER*20 DOUBLE

      WRITE(6,'(3A)') 'Double a string: >>', DOUBLE(STR), '<<'
      END
