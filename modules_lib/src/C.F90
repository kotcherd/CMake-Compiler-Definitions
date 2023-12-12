module C

contains

function cf(x) result(y)
    real(8) :: x,y
    
    y= -99999.
    print *, " == we are in module C "
#ifdef FOO
    print *, " == FOO is defined"
    y = x*6
#endif
#ifdef BAR
    print *, " == BAR is defined"
    y = x*5+5
#endif
    
end function cf

end module C


