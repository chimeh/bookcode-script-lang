sub FILENO {
    my $self = shift;
    return fileno $self;
}
