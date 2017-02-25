#! perl

# Chapter 14, Exercise 2

use strict;

my %last_name = qw{ fred flintstone Wilma Flintstone Barney Rubble betty rubble Bamm-Bamm Rubble PEBBLES FLINTSTONE };

foreach ( sort name_sort keys %last_name ) {
	print "$_ $last_name{$_}\n";
}

sub name_sort {
	"\L$last_name{$a}" cmp "\L$last_name{$b}" or
	"\L$a" cmp "\L$b"
}