! sequnform.f --
!     Example of wrongly using a sequential unformatted file
!
      program sequnform
          implicit none

          real value(10)
          integer i, j

          open( 10, file = 'sequnform.bin', form = 'unformatted' )

          !
          ! Calculate some data and write them to the file
          ! The records get longer
          !
          do 120 j = 1,10
              do 110 i = 1,10
                  value(i) = i + j * 10.0
  110         continue

              write( 10 ) (value(i), i = 1,j )
  120     continue

          !
          ! Read the data - in reverse order
          !
          rewind( 10 )

          !
          ! First record: only one value
          !
          read( 10 ) value(1)
          write( *, * ) value(1)

          !
          ! Second record: two values, but read ten
          !
          read( 10 ) value
          write( *, * ) value(1)

      end program
