sub fhbits {
    my @fhlist = @_;
    my $bits;
    for my $fh (@fhlist) {
        vec($bits, fileno($fh), 1) = 1;
    }
    return $bits;
}
$rin = fhbits(*STDIN, *TTY, *MYSOCK);
