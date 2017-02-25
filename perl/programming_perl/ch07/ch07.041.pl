sub FLAG_FOO ()     { 1 << 8 }
sub FLAG_BAR ()     { 1 << 9 }
sub FLAG_MASK ()    { FLAG_FOO | FLAG_BAR }

sub OPT_GLARCH ()   { (0x1B58 & FLAG_MASK) == 0 }
sub GLARCH_VAL ()   {
    if (OPT_GLARCH) { return 23 }
    else            { return 42 }
}

sub N () { int(GLARCH_VAL) / 3 }
BEGIN {                 # compiler runs this block at compile time
    my $prod = 1;       # persistent, private variable
    for (1 .. N) { $prod *= $_ }
    sub NFACT () { $prod }
}
