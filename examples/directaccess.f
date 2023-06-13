! directaccess.f --
!     Example of using a direct-acess file
!
      program directaccess
          implicit none

          real value(10)
          integer i, rec

          open( 10, file = 'directacces.bin', access = 'direct',
     &          recl = 4*10 )

          !
          ! Calculate some data and write them to the file
          !
          do 120 rec = 1,10
              do 110 i = 1,10
                  value(i) = i + rec * 10.0
  110         continue

              write( 10, rec = rec ) value
  120     continue

          !
          ! Read the data - in reverse order
          !
          do 220 rec = 10,1,-1
              read( 10, rec = rec ) value(1), value(2)
              write( *, * ) value(1), value(2)
  220     continue
      end program
