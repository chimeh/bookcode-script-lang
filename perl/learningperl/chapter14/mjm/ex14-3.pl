#! perl

# Chapter 14, Exercise 3

use strict;

my $loc = index( $ARGV[0], $ARGV[1] );

while( $loc != -1 ) {
	print "$loc\n";
	$loc = index( $ARGV[0], $ARGV[1], $loc + 1);
}
