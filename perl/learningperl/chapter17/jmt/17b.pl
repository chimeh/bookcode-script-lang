#!/usr/bin/perl

use strict;
use warnings;
use 5.014;

my @files = glob '*';

foreach my $file (@files){
  my( @times ) = (stat $file)[8,9];
  printf "%-15s %15d %15d\n", $file, @times;
}
