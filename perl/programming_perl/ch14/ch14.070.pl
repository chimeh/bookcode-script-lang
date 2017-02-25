sub TIEHANDLE {
    my $class = shift;
    my $form = shift;
    open(my $self, $form, @_)  || croak "can't open $form@_: $!";
    if ($form =~ />/) {
        print $self  "<SHOUT>\n";
        $$self->{WRITING} = 1;     # Remember to do end tag
    }
    return bless $self, $class;    # $self is a glob ref
}
