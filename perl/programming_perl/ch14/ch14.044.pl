sub PUSH    {
    my $self = shift;
    if (@_ + $#{$self->{DATA}} > $self->{BOUND}) {
        confess "Attempt to push too many elements";
    }
    push @{$self->{DATA}}, @_;
}
