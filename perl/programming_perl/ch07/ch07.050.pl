my $val;
sub canmod : lvalue {
    $val;
}
sub nomod {
    $val;
}

canmod() = 5;   # Assigns to $val.
nomod()  = 5;   # ERROR
