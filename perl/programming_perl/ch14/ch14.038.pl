sub FETCHSIZE {
    my $self = shift;
    return scalar @{$self->{DATA}};
}
