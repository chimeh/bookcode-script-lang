sub mygrep (&@) {
    my $coderef = shift;
    my @result;
    for my $_ (@_) {
        push(@result, $_) if &$coderef;
    }
    return @result;
}
