use v5.14;

my $value = do {
    given (<STDIN>) {
        0xFF0000 when /red/i;
        0x00FF00 when /green/i;
        0x0000FF when /blue/i;
        chomp;
        warn "unknown RGB component '$_', using black instead\n";
        0x000000;
    }
};
