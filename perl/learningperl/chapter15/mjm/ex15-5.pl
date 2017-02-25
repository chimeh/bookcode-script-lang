#! perl
# Chapter 15, Exercise 5

use strict;
use 5.010001;

chomp( my $number = $ARGV[0] );

if( $number ~~ /^[0-9]+$/ ) {

	my @divisors = divisors( $number );

	given( isOdd( $number ) ) {
		when( 0 ) { say "even"; }
		when( 1 ) { say "odd"; }
	}

	given( isDivisibleBy10( $number ) ) {
		when( 0 ) { say "not divisible by 10"; }
		when( 1 ) { say "divisible by 10"; }
	}

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

sub isOdd {
	my $number = shift;
	return $number % 2;
}

sub isDivisibleBy10 {
	my $number = shift;
	return ( $number % 10 == 0 ? 1 : 0 );
}