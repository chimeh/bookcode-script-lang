for (;;) {
    next if $x == $y;
    last if $x =  $y ** 2;
    # do something here
    last unless $x++ <= $z;
}
