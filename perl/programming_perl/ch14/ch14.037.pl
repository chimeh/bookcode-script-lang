sub STORE {
    my($self, $index, $value) = @_;
    if ($index > $self->{BOUND} ) {
        confess "Array OOB: $index > $self->{BOUND}";
    }
    return $self->{DATA}[$index] = $value;
}
