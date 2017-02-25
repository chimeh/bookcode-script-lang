for $family ( keys %HoA ) {
    print "$family: ";
    for $i ( 0 .. $#{ $HoA{$family} } ) {
        print " $i = $HoA{$family}[$i]";
    }
    print "\n";
}
