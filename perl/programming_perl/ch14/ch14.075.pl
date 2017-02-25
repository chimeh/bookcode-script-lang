sub CLOSE {
    my $self = shift;
    if ($$self->{WRITING}) {
        $self->SEEK(0, 2)             || return;
        $self->PRINT("</SHOUT>\n")    || return;
    }
    return close $self;
}
