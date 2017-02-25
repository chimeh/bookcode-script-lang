#!/usr/bin/perl

use strict;
use warnings;
use 5.014;

if(scalar @ARGV lt 2){
  die "Please supply at least two arguments";
}

my ($arg0, $arg1) = ($ARGV[0], $ARGV[1]);

link $arg0, $arg1;
