#! perl

# Chapter 12, Exercise 3

use 5.010;

print "The following files are readable, writeable, and owned by me:\n";

foreach ( @ARGV ) {
	if ( -r -w -o $_ ) {
		print "$_\n";
	}
}
