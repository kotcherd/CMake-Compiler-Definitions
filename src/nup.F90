       program Nup

       use n1
       use n2

       real(8) :: x, y

       print *, "===========  Program nup  ============="
       print *, "........ x is 10 calling n1f"
       x = 10.0
       y = n1f(x)
       print *, 'y is ', y

       print *, "........ x is 21 calling n2f"
       x = 21.0
       y = n2f(x)
       print *, 'y is ', y


       end program Nup
