#! perl

# Chapter 16, Exercise 3

use strict;

my $output = `perl date.pl`;

if( $output =~ /^S/ ) {
	print( "Go play\n" );
}
else {
	print( "Get to work\n" );
}