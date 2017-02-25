#! perl

# Chapter 8, Exercise 3

use strict;
use warnings;

while(<>) {
	chomp;
	if( /\b(\w+a)\b/ ) {
		print "'$_' contains '$1'\n";
	} else {
		print "No match: |$_|\n";
	}
}