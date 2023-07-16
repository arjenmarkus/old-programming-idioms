C equiv.f --
C     Do not use .EQ. to compare two logicals
C
      PROGRAM EQUIV
      LOGICAL A, B

      A = .TRUE.
      B = .TRUE.

      CALL CHECK( A, B )

      A = .FALSE.
      B = .TRUE.

      CALL CHECK( A, B )
      END

      SUBROUTINE CHECK( A, B )
      LOGICAL A, B

      WRITE(*,*) 'A = ', A
      WRITE(*,*) 'B = ', B
      IF ( A .EQ. B ) THEN
          WRITE(*,*) 'A and B are equal'
      ELSE
          WRITE(*,*) 'A and B are NOT equal'
      ENDIF
      END
