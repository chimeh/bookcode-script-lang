#!/usr/bin/perl

use strict;
use warnings;
use 5.014;

foreach my $file (@ARGV) {
  report($file);
}

sub report {
  my $file = shift;
  if (! -e $file){
    say "File $file doesn't exist.";
    exit;
  }
  if (-r $file and -w _ and -o _){
    say "File $file is readable, writeable and owned by me!";
  }
}
