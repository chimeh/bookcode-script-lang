#!/usr/bin/perl

#Modify the previous program to tell each new person the names
#of all the people it has previously greeted:

use strict;
use warnings;
use 5.010;

greet("Fred");
greet("Barney");
greet("Wilma");
greet("Betty");

sub greet {
	my ($name) = @_;
	state @latest;
	print "Hi ${name}! ";
	if (@latest) {
		print "I've seen: @latest\n";
	}
	else {
		print "You are the first one here!\n"
	}
	push (@latest, $name);
}