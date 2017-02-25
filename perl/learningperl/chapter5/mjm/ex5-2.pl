#! /usr/bin/perl";

# Chapter 5, Exercise 2

use strict;

my $ruler = "1234567890" x 8;

print "Enter one or more lines of text, then Ctrl-D:\n";

chomp( my @input = <STDIN> );

print "$ruler\n";

for ( @input ) {
	printf( "%20s\n", $_ );
}
