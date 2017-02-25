use v5.10;
sub make_dogtag {
    state $REQUIRED_FIELDS = { name=>1, rank=>1, serial_num=>1 };

    my ($class, $init_fields) = @_;

    die "Must supply (at least) name, rank, and serial number"
        unless [keys %{$init_fields}] ~~ $REQUIRED_FIELDS;

    ...
}
