while (<>) {
    @tmp = split;           # Split elements into an array.
    push @AoA, [ @tmp ];    # Add an anonymous array reference to @AoA.
}
