#! perl

# Chapter 8, Exercise 6

use strict;
use warnings;

while(<>) {
	chomp;	
	if (/(\W+\Z)/) {
		print "|$_|\n";
	}
}