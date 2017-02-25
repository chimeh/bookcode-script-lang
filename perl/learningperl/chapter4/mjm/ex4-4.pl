#! perl

# Chapter 4, Exercise 4

use strict;
use 5.010;

greet( "Fred" );
greet( "Barney" );

sub greet {
	my $just_arrived = shift;
	state $already_here;
	if( !defined $already_here ) {
		say "Hi $just_arrived! You are the first one here!";
		$already_here = $just_arrived;
	}
	else {
		say "Hi $just_arrived! $already_here is also here!";
	}
}