sub clobber {
    my $self = shift;
    $self->{CLOBBER} = @_ ? shift : 1;
}
