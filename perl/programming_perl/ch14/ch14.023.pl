package Tie::Cycle;

sub TIESCALAR {
    my $class    = shift;
    my $list_ref = shift;
    return unless ref $list_ref eq ref [];
    my @shallow_copy = map { $_ } @$list_ref;
    my $self = [ 0, scalar @shallow_copy, \@shallow_copy ];
    bless $self, $class;
}

sub FETCH {
    my $self = shift;
    my $index = $$self[0]++;
    $$self[0] %= $self->[1];
    return $self->[2]->[ $index ];
}

sub STORE {
    my $self     = shift;
    my $list_ref = shift;
    return unless ref $list_ref eq ref [];
    $self = [ 0, scalar @$list_ref, $list_ref ];
}
