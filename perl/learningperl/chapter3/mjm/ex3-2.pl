#! perl

# Chapter 3, Exercise 2

use 5.010;
use strict;

my @flintstones = qw(fred betty barney dino wilma pebbles bamm-bamm);

my @data = <STDIN>;

foreach my $item (@data) {
	say $flintstones[$item - 1];
}