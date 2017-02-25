#!/usr/bin/perl

use strict;
use warnings;
use 5.014;

use POSIX qw/strftime/;

my @files = glob '*';

foreach my $file (@files){
  my( @times ) = (stat $file)[8,9];
  my @formatted_times = map { strftime('%Y%m%d', localtime($_)) } @times;
  printf "%-15s %15d %15d\n", $file, @formatted_times;
}
