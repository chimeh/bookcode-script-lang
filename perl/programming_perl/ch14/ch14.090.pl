sub TIEHANDLE {
    my $class    = shift;
    my $form = shift;
    my $name = "$form@_";          # NEW
    open(my $self, $form, @_)   || croak "can't open $name: $!";
    if ($form =~ />/) {
        print $self  "<SHOUT>\n";
        $$self->{WRITING} = 1;     # Remember to do end tag
    }
    bless $self, $class;           # $fh is a glob ref
    $self->pathname($name);        # NEW
    return $self;
}

sub OPEN { $_[0]->trace;           # NEW
    my $self = shift;
    my $form = shift;
    my $name = "$form@_";
    $self->CLOSE;
    open($self, $form, @_)      || croak "can't reopen $name: $!";
    $self->pathname($name);        # NEW
    if ($form =~ />/) {
        (print $self "<SHOUT>\n") || croak "can't start print: $!";
        $$self->{WRITING} = 1;     # Remember to do end tag
    }
    else {
        $$self->{WRITING} = 0;     # Remember not to do end tag
    }
    return 1;
}
