C integral.f --
C     Illustrate the EXTERNAL statement
C
      PROGRAM CALC
      REAL A, INTGRL
      EXTERNAL A, INTGRL

      XBEGIN = 0.0
      XEND   = 1.0
      WRITE(*,*) INTGRL(A, XBEGIN, XEND)
      END

      FUNCTION A(X)
      REAL X
      A = X ** 2
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
