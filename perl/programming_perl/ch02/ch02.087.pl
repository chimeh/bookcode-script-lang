@ARGV = ("-") unless @ARGV;     # assume STDIN iff empty
while (@ARGV) {
    $ARGV = shift @ARGV;        # shorten @ARGV each time
    if (!open(ARGV, '<', $ARGV)) {
        warn "Can't open $ARGV: $!\n";
        next;
    }
    while (<ARGV>) {
        ...                     # code for each line
    }
}
