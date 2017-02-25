#!/usr/bin/perl
 
use strict;
use warnings;
use 5.014;
 
my ($string, $substring) = @ARGV;

my $substring_length =  length $substring;
my $position = 0;
my $total_chopped = 0;
my ($next_match, $length_to_chop);

while(1){
  $next_match = index($string, $substring);
  exit unless $next_match > -1;
  $length_to_chop = $substring_length + $next_match;
  $string = substr($string, $length_to_chop);
  $position = ($next_match + $total_chopped);
  print "$position\n";
  $total_chopped += $length_to_chop;
}
