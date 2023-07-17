C twodarray.f --
C     Pass a one-dimensional array to a two-dimensional dummy argument
C
      PROGRAM TWODAR
      REAL    RARR(10)

      CALL TWOD( RARR, 2, 5 )

      END

      SUBROUTINE TWOD( ARRAY, N1, N2 )
      REAL ARRAY(N1,N2)

      INTEGER I, J

      DO 120 J = 1,N2
          DO 110 I = 1,N1
              ARRAY(I,J) = I + J
  110     CONTINUE
  120 CONTINUE

      END
