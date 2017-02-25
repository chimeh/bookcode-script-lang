sub OPEN {
    my $self = shift;
    my $form = shift;
    my $name = "$form@_";
    $self->CLOSE;
    open($self, $form, @_)         || croak "can't reopen $name: $!";
    if ($form =~ />/) {
        (print $self "<SHOUT>\n")  || croak "can't start print: $!";
        $$self->{WRITING} = 1;     # Remember to do end tag
    }
    else {
        $$self->{WRITING} = 0;     # Remember not to do end tag
    }
    return 1;
}
