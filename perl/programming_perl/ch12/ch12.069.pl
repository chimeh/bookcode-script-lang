package MailNotify;
sub DESTROY {
    my $self = shift;
    my $fh   = $self->{mailhandle};
    my $id   = $self->{name};
    print $fh "\n$id is signing off at " . localtime() . "\n";
    close $fh;  # close pipe to mailer
}
