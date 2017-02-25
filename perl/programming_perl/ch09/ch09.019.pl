use v5.14;     # using the + prototype, new to v5.14

sub show(+) {
    require Dumpvalue;
    state $prettily = new Dumpvalue::
                        tick        => q("),
                        compactDump => 1,  # comment these two lines out
                        veryCompact => 1,  # if you want a bigger dump
                    ;
    dumpValue $prettily @_;
}

# Assign a list of array references to an array.
my @AoA = (
       [ "fred", "barney" ],
       [ "george", "jane", "elroy" ],
       [ "homer", "marge", "bart" ],
);
push $AoA[0], "wilma", "betty";
show @AoA;
