#! perl

# Chapter 4, Exercise 3

use strict;

my @fred = above_average( 1..10 );
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";

sub above_average {
	my $average = average(@_);
	my @above_average = ();
	foreach(@_) {
		if($_ > $average) {
			push(@above_average, $_);
		}
	}
	return @above_average;
}

sub average {
	return total(@_) / scalar @_;
}

sub total {
	my $total = 0;
	foreach(@_) {
		$total += $_;
	}
	return $total;
}