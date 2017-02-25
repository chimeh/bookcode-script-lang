use 5.012;
use warnings;

die "No input given!\n" if ( !@ARGV );

foreach my $fn ( @ARGV ) {
    open( IN, $fn ) or die $!;
    open( OUT, ">$fn.out" ) or die $!;

    while ( <IN> ) {
        # This uses the fact that split, then join, can be used to replace all instances
        # of one string with another. All we need to do is carry out the second substitution
        # halfway through this process, and bingo; we've swapped two strings within a text.
        print OUT join 'Wilma', map { s/wilma/Fred/gir } split /fred/i, $_, -1;
    }

    close( IN ) or warn $!;
    close( OUT ) or warn $!;
}
