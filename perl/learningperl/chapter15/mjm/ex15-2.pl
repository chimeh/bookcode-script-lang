#! perl
# Chapter 15, Exercise 2

use strict;
use 5.010001;

say "Enter a number:";
chomp( my $number = <STDIN> );

given( $number ) {
	when( $_ % 3 == 0 ) { say "Fizz"; continue; }
	when( $_ % 5 == 0 ) { say "Bin"; continue ; }
	when( $_ % 7 == 0 ) { say "Sausage"; } # Doesn't work as expected in ActiveState Perl. Falls through to default.
	default { say "Wrong answer." }
}