sub newopen {
    my $path = shift;
    open(my $fh, '<', $path) || return undef;
    return $fh;
}
$fh = newopen("/etc/passwd");
