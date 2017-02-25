#! perl

# Chapter 8, Exercise 5

use strict;
use warnings;

while(<>) {
	chomp;
	if( /(?<word>\b\w+a\b.{0,5})/ ) {
		print "'$_' contains '$+{word}'\n";
	} else {
		print "No match: |$_|\n";
	}
}