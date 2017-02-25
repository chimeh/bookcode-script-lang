#! perl

# Chapter 3, Exercise 3

use 5.010;
use strict;

my @flintstones = qw(fred betty barney dino wilma pebbles bamm-bamm);

my @data = <STDIN>;
my @sorted_data = sort(@data);

say "Output on separate lines:";
foreach my $item (@sorted_data) {
	print $item;
}

say "";

say "Output on single line:";
chomp(@sorted_data);
print "@sorted_data";