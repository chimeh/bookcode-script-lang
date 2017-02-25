sub STORE {
    my($self,$value) = @_;
    ref($self)                  || confess "not a class method";
    open(my $fh, ">", $$self)   || croak "can't clobber $$self: $!";
    syswrite($fh, $value) == length $value
                                || croak "can't write to $$self: $!";
    close($fh)                  || croak "can't close $$self: $!";
    return $value;
}
