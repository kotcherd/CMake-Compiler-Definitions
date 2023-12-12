module e2

use B

contains

function e2f(x) result(y)
    real(8) :: x,y
    y = bf(x)
    
    print *, " == we are in module e1 "
#ifdef FOO
    print *, " == FOO is defined"
#endif
#ifdef BAR
    print *, " == BAR is defined"
#endif
    
end function e2f

end module e2


