#!/usr/bin/perl
use 5.010;
use warnings;
use strict;


die "usage: ex2.pl number\n" if scalar @ARGV != 1 || $ARGV[0] !~ /\d+/;

given ( $ARGV[0] ) {
  when ( $_ % 3 == 0 ) { say "Fizz"; continue }
  when ( $_ % 5 == 0 ) { say "Bin"; continue }
  when ( $_ % 7 == 0 ) { say "Sausage" }
}
