#! perl

# Chapter 4, Exercise 5

use strict;
use 5.010;

greet( "Fred" );
greet( "Barney" );
greet( "Wilma" );
greet( "Betty" );

sub greet {
	my $just_arrived = shift;
	# Initialization of state variables in list context currently forbidden,
	# so have to declare and initialise separately.
	state @already_here;
	if( !@already_here ) {
		@already_here = ();
		say "Hi $just_arrived! You are the first one here!";
	}
	else {
		say "Hi $just_arrived! I've seen: @already_here";
	}
	push( @already_here, $just_arrived );
}