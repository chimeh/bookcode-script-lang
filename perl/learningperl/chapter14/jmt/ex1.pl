#!/usr/bin/perl

use strict;
use warnings;
use 5.014;

my @numbers = sort { $a <=> $b } @ARGV;

printf "%15s" x @numbers, @numbers;
print "\n";
