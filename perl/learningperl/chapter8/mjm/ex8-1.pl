#! perl

# Chapter 8, Exercise 1

use strict;
use warnings;

while(<>) {
	chomp;
	if( /match/ ) {
		print "Matched: |$`<$&>$'|\n"; # the special match vars
	} else {
		print "No match: |$_|\n";
	}
}