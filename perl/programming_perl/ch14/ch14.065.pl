sub NEXTKEY  {
    carp &whowasi if $DEBUG;
    my $self = shift;
    return scalar each %{ $self->{CONTENTS} }
}
