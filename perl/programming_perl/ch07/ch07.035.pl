use Symbol "qualify_to_ref";

sub myfileno (*) {
    my $fh = qualify_to_ref(shift, caller);
    ...
}
