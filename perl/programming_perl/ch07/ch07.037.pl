sub try (&$) {
    my ($try, $catch) = @_;
    eval { &$try };
    if ($@) {
        local $_ = $@;
        &$catch;
    }
}
sub catch (&) { $_[0] }

try {
    die "phooey";
}  # not the end of the function call!
catch {
    /phooey/  &&  print "unphooey\n";
};
