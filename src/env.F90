       program Env

       use e1
       use e2

       real(8) :: x, y

       print *, "===========  Program Env  ============="
       print *, "........  x is 10 calling e1f"
       x = 10.0
       y = e1f(x)
       print *, 'y is ', y


       print *, "........  x is 21 calling e2f"
       x = 21.0
       y = e2f(x)
       print *, 'y is ', y


       end program Env
