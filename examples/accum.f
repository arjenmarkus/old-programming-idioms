C accum.f --
C     Illustrate the use of the ENTRY statement
C
      PROGRAM ACCUM
      REAL X, SUM

      OPEN( 10, FILE = 'accum.inp' )

      READ( 10, * ) X
      SUM = SETACC( X )

  100 CONTINUE
      READ( 10, *, END = 110, ERR = 110 ) X
      SUM = NXTACC( X )
      GOTO 100

  110 CONTINUE
      WRITE(*,*) 'Sum: ', SUM
      END

      REAL FUNCTION SETACC( X )
      REAL X
      REAL SUM
      SAVE SUM

      SUM    = X
      SETACC = SUM
      RETURN

      ENTRY NXTACC( X )

      SUM    = SUM + X
      NXTACC = SUM
      END
