#! /usr/bin/perl
use strict;
use warnings;
use 5.010;

my @fred = qw ( 1 3 5 7 9);
say  "total of \@fred is ", &tot_list(@fred);
say  "enter numbers on separate lines";
say 'total of those numbers ',  &tot_list(<STDIN>);

# subroutine returns total of numbers passed in array
sub tot_list {
	my $tot;
	foreach (@_) {
		$tot += $_;
	}
	return $tot;
}
