#! perl

# Chapter 14, Exercise 1

use strict;

foreach ( sort {$a <=> $b} @ARGV ) {
	printf( "%20s\n", sprintf( "%.5f", $_ ) );
}
