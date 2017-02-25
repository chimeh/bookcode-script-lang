#! perl

# Chapter 8, Exercise 4

use strict;
use warnings;

while(<>) {
	chomp;
	if( /\b(?<word>\w+a)\b/ ) {
		print "'$_' contains '$+{word}'\n";
	} else {
		print "No match: |$_|\n";
	}
}