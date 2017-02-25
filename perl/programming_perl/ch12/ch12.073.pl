sub name {
    my $self = shift;
    if (@_) { $self->{name} = shift }
    return $self->{name};
}
