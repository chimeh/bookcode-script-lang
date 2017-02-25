sub DESTROY {
    my $self = shift;
    confess "This is not a class method!" unless ref $self;
    $count--;
}
