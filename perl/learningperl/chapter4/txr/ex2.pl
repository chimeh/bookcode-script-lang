#! /usr/bin/perl
use strict;
use warnings;
use 5.010;

say  "total of 1 to 1000 ", &tot_list((1..1000));

# subroutine returns total of numbers passed in array
sub tot_list {
	my $tot;
	foreach (@_) {
		$tot += $_;
	}
	return $tot;
}
