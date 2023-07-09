C     SHWSTR --
C     Show the effect of mismatched fixed lengths
C
      PROGRAM SHWSTR
      CHARACTER*10 STRING(5)

      STRING(1) = 'ABCDEFGHIJ'
      STRING(2) = '1234567890'
      STRING(3) = '?         '
      STRING(4) = '?         '

      CALL STR3(  STRING, 2 )
      CALL STR13( STRING, 2 )
      END
      SUBROUTINE STR3( STRING, N )
      CHARACTER*3 STRING(N)
      INTEGER I
      DO I = 1,N
          WRITE(*,*) I, STRING(I)
      ENDDO
      END
      SUBROUTINE STR13( STRING, N )
      CHARACTER*13 STRING(N)
      INTEGER I
      DO I = 1,N
          WRITE(*,*) I, STRING(I)
      ENDDO
      END
