sub newopen {
    my $path = shift;
    local *FH;          # not my() nor our()
    open(FH, '<', $path) || return undef;
    return *FH;         # not \*FH!
}
$fh = newopen("/etc/passwd");
