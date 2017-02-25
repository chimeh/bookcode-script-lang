#! perl

# Chapter 13, Excercise 8

use strict;

my @files = glob "*";
	
foreach ( @files ) {
	# untested - symbolic links not supported on Windows
	if( -l $_ ) {
		print "$_ => " . readlink( $_ ) . "\n" ;
	}
}
