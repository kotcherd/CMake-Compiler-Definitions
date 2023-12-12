module A

contains

function af(x) result(y)
    real(8) :: x,y
    
    y=77777.
    print *, " == we are in module A "
#ifdef FOO
    print *, " == FOO is defined"
    y = x*2
#endif
#ifdef BAR
    print *, " == BAR is defined"
    y = x*2+1
#endif
    
end function af

end module A


