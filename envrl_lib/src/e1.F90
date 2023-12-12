module e1

use A

contains

function e1f(x) result(y)
    real(8) :: x,y
    y = af(x)
    
    print *, " == we are in module e1 "
#ifdef FOO
    print *, " == FOO is defined"
#endif
#ifdef BAR
    print *, " == BAR is defined"
#endif
    
end function e1f

end module e1


