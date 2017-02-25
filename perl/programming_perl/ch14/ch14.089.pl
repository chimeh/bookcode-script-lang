sub GETC { $_[0]->trace;           # NEW
    my($self) = @_;
    getc($self);
}
