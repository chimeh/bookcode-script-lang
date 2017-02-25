sub DELETE   {
    carp &whowasi if $DEBUG;
    my $self = shift;
    my $dot = shift;
    my $file = $self->{HOME} . "/.$dot";
    croak "@{[&whowasi]}: won't remove file $file"
        unless $self->{CLOBBER};
    delete $self->{CONTENTS}->{$dot};
    unlink($file)|| carp "@{[&whowasi]}: can't unlink $file: $!";
}
