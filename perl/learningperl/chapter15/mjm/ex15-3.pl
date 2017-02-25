#! perl
# Chapter 15, Exercise 3

use strict;
use 5.010001;

foreach ( @ARGV ) {
	print "$_:";
	when( !( -e $_ ) ) { print " doesn't exist"; }
	when( -r $_ ) { print " readable"; continue; }
	when( -w $_ ) { print " writeable"; continue; }
	when( -x $_ ) { print " executable"; continue; }
	print "\n";
}