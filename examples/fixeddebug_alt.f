! fixeddebug_alt.f --
!     Illustrate alternative to "D" lines
!
      program fixeddebug_alt

      !logical, parameter :: debug = .false.
      logical debug
      parameter (debug = .false.)

      if ( debug ) write(*,*) 'Note: in debugging mode ...'
      write(*,*) 'Hello, world'

      end program fixeddebug_alt
