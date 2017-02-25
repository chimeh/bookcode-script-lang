#!/usr/bin/perl
#
# read numbers from stdinput and use that number to print the corresponding name from harcoded list below
#
use strict;
use warnings;

my @names = qw / fred betty barney dino wilma pebbles bamm-bamm /;
chomp(my @numbers = <STDIN>);
foreach (@numbers) {
				print $names[$_-1], "\n";
}

