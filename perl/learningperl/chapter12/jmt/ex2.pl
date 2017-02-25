#!/usr/bin/perl

use strict;
use warnings;
use 5.014;

my $oldest = 0;
my $oldest_file = "";

foreach my $file (@ARGV) {
  if (! -e $file){
    die "File $file doesn't exist.";
  }
  if (-M $file > $oldest){
    $oldest = -M $file;
    $oldest_file = $file;
  }
}

say "Oldest file is $oldest_file: $oldest";
