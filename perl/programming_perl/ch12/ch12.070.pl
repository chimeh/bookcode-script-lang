sub DESTROY {
    my $self = shift;
    # check for an overridden destructor...
    $self->SUPER::DESTROY if $self->can("SUPER::DESTROY");
    # now do your own thing before or after
}
