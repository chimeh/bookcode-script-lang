#! perl

# Chapter 3, Exercise 1

use strict;

my @data = <STDIN>;
my @reversed_data = reverse(@data);

foreach my $item (@reversed_data) {
	print $item;
}
