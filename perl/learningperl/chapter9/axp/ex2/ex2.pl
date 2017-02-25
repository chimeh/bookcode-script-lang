use 5.012;
use warnings;

die "No input given!\n" if ( !@ARGV );

foreach my $fn ( @ARGV ) {
    open( IN, $fn ) or die $!;
    open( OUT, ">$fn.out" ) or die $!;

    while ( <IN> ) {
	print OUT s/fred/Larry/gir;
    }

    close( IN ) or warn $!;
    close( OUT ) or warn $!;
}
