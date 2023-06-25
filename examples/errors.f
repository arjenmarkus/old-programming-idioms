C errors.f --
C     A simple illustration of alternative returns
C
      PROGRAM ERRORS
      REAL X

      X = 2.0
      CALL PRSQRT( X, *900 )

      X = -1.0
      CALL PRSQRT( X, *900 )
      STOP
C
C     Handle any errors
C
  900 CONTINUE
      WRITE(*,*) 'Routine PRSQRT expects a positive argument'

      END

      SUBROUTINE PRSQRT( X, * )
      REAL X

      IF ( X .GE. 0.0 ) THEN
          WRITE(*,*) 'The square root of ', X, ' is ', SQRT(X)
      ELSE
          RETURN 1
      ENDIF
      END
