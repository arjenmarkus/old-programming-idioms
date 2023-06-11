! fixedform.f --
!     Fixed form example: the presence of spaces
!
      program fixedform

      integer :: i

      do 100 i = 1.10
          write(*,*) i
  100 continue
!
!     Illustrate the fact that spaces have no meaning ...
!
      do 110 i = 1,10

      i f ( i . e q . 4 ) t h e n
          w r i t e ( * , * ) i
      e n d i f
  110 c o n t i n u e
      end
