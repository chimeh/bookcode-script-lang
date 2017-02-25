#! perl

# Chapter 4, Exercise 2

use strict;
use 5.010;

my $min = 1;
my $max = 1000;

my $total = total( $min..$max );
say "Sum of $min to $max: $total";

sub total {
	my $total = 0;
	foreach(@_) {
		$total += $_;
	}
	return $total;
}