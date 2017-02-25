#!/usr/bin/perl

#Write a subroutine named greet that welcomes the person you
#name by telling them the name of the last person it greeted:

use strict;
use warnings;
use 5.010;

greet("Fred");
greet("Barney");

sub greet {
	my ($name) = @_;
	state $latest;
	print "Hi ${name}! ";
	if (not defined $latest){
		print "You are the first one here!\n"
	}
	else {
		print "$latest is also here!\n";
	}
	$latest = $name;
}