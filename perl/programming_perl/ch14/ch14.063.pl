sub EXISTS   {
    carp &whowasi if $DEBUG;
    my $self = shift;
    my $dot  = shift;
    return exists $self->{CONTENTS}->{$dot};
}
