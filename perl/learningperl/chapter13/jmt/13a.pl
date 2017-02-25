#!/usr/bin/perl

use strict;
use warnings;
use 5.014;

chomp (my $dir = <STDIN>);
if ($dir eq '') {
  chdir $ENV{"HOME"} or die "Cannot change to home directory: $!";
} else {
  chdir $dir or die "Cannot change to $dir: $!";
}

foreach (<*>) {
  say $_;
}