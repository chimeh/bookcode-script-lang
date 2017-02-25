sub name {
    my $self = shift;
    my $field = __PACKAGE__ . "::name";
    if (@_) { $self->{$field} = shift }
    return $self->{$field};
}
