#! perl
# Chapter 15, Exercise 4

use strict;
use 5.010001;

chomp( my $number = $ARGV[0] );

if( $number ~~ /^[0-9]+$/ ) {

	my @divisors = divisors( $number );

	given( scalar @divisors ) {
		when( 0 ) { say "prime number"; }
		default {
			say "divisors:";
			foreach ( @divisors ) {
				say;
			}
		}
	}
	
}
else {
	say "not a number";
}

sub divisors {
	my $number = shift;
	
	my @divisors = ();
	foreach my $divisor ( 2 .. ( $number / 2 ) ) {
		push @divisors, $divisor unless $number % $divisor;
	}
	
	return @divisors;
}