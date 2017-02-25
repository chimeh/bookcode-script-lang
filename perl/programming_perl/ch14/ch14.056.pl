sub STORE {
    carp &whowasi if $DEBUG;
    my $self  = shift;
    my $dot   = shift;
    my $value = shift;
    my $file  = $self->{HOME} . "/.$dot";

    croak "@{[&whowasi]}: $file not clobberable"
        unless $self->{CLOBBER};

    open(F, "> $file") || croak "can't open $file: $!";
    print F $value;
    close(F)           || croak "can't close $file: $!";
}
