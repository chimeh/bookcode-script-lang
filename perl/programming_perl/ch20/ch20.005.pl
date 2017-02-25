sub is_tainted {
    my $arg = shift;
    my $nada = substr($arg, 0, 0);  # zero-length
    local $@;  # preserve caller's version
    eval { eval "# $nada" };
    return length($@) != 0;
}
