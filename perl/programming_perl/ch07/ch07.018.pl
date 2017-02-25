use v5.14;

sub bumpx {
    state $x = 10;         # init only 1st time through
    return $x++;
}
