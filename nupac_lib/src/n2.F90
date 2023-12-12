module n2

use C

contains

function n2f(x) result(y)
    real(8) :: x,y
    y = cf(x)
    
    print *, " == we are in module n2 "
#ifdef FOO
    print *, " == FOO is defined"
#endif
#ifdef BAR
    print *, " == BAR is defined"
#endif
    
end function n2f

end module n2


