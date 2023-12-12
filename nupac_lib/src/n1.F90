module n1

use A

contains

function n1f(x) result(y)
    real(8) :: x,y
    y = af(x)
    
    print *, " == we are in module n1 "
#ifdef FOO
    print *, " == FOO is defined"
#endif
#ifdef BAR
    print *, " == BAR is defined"
#endif
    
end function n1f

end module n1


