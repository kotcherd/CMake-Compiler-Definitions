module B

contains

function bf(x) result(y)
    real(8) :: x,y
    
    y= -88888.
    print *, " == we are in module B "
#ifdef FOO
    print *, " == FOO is defined"
    y = x*4
#endif
#ifdef BAR
    print *, " == BAR is defined"
    y = x*4+3
#endif
    
end function bf

end module B


