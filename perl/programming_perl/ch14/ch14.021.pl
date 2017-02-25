tie my $counter, "Tie::Counter", 100;
@array = qw /Red Green Blue/;
for my $color (@array) {               # Prints:
    print "  $counter  $color\n";      #   101  Red
}                                      #   102  Green
                                       #   103  Blue
