local $SIG{__WARN__} = sub {
    my $msg = shift;
    die $msg if $msg =~ /isn't numeric/;
};
