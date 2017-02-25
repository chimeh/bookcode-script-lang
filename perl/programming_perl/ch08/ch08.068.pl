{               # make $a and $b point to each other
    my ($a, $b);
    $a = \$b;
    $b = \$a;
}
