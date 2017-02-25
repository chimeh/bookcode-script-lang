#! /usr/bin/perl";

# Chapter 5, Exercise 3

use strict;

my $ruler_section = "1234567890";
my $ruler = $ruler_section x 8;

print "Enter column width on first line, then one or more lines of text, then Ctrl-D:\n";

chomp( my @input = <STDIN> );

my $col_width = shift @input;

if( $col_width > length( $ruler ) ) {
	$ruler = $ruler_section x ( ( $col_width / 10 ) + 1 );
}

print "$ruler\n";

for ( @input ) {
	printf( "%${col_width}s\n", $_ );
}
