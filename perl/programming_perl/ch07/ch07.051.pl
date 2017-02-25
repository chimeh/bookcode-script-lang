canmod $x  = 5;     # assigns 5 to $x first!
canmod 42  = 5;     # can't change a constant; compile-time error
canmod($x) = 5;     # this is ok
canmod(42) = 5;     # and so is this
