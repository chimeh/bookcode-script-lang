#!/usr/bin/perl

use strict;
use warnings;
use 5.014;
use File::Copy;

if(scalar @ARGV lt 2){
  die "Please supply at least two arguments";
}

my ($arg0, $arg1) = ($ARGV[0], $ARGV[1]);

if( -d $arg1){
  move($arg0, $arg1) or die "The move operation failed: $!";
}
rename $arg0, $arg1;
