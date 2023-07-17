C writearray.f --
C     Use one routine to write arrays of different types
C
      PROGRAM WRITAR
      INTEGER IARR(10)
      REAL    RARR(10)
      INTEGER I

      OPEN( 10, FILE = 'writar.out', FORM = 'UNFORMATTED' )

      DO 110 I = 1,10
          IARR(I) = I
          RARR(I) = 0.1 * I
  110 CONTINUE

      CALL WRTDAT( IARR, 10 )
      CALL WRTDAT( RARR, 10 )

      CLOSE( 10 )

      END

      SUBROUTINE WRTDAT( ARRAY, NOELEM )
      INTEGER ARRAY(NOELEM)

      WRITE(10) ARRAY

      END
