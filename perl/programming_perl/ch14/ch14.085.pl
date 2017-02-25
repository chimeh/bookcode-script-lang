sub DESTROY {
    my $self = shift;
    $self->CLOSE;      # Close the file using Shout's CLOSE method.
}
