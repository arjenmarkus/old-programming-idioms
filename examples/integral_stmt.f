C integral_stmt.f --
C     Illustrate statement functions
C
      PROGRAM CALC
      REAL INTGRL
      EXTERNAL INTGRL
      A(X) = X**2

      XBEGIN = 0.0
      XEND   = 1.0
      WRITE(*,*) INTGRL(A, XBEGIN, XEND)
      END

      REAL FUNCTION INTGRL(A, XB, XE)
      REAL A, XB, XE
      EXTERNAL A
      REAL DX

      DX     = (XE - XB) / 10.0
      INTGRL = 0.0
      DO 100 I = 1,10
          X      = XBEGIN + (I-1) * DX
          INTGRL = INTGRL + A(X)
  100 CONTINUE
      INTGRL = INTGRL * DX
      END
