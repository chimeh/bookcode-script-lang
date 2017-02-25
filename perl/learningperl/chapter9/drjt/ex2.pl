#!/usr/bin/perl
use 5.010;
use strict;
use warnings;

# Write a program that makes a modified copy of a text file. In the copy, every
# string Fred (case-insensitive) should be replaced with Larry. (So, Manfred
# Mann should become ManLarry Mann.) The input file name should be given on the
# command line (don't ask the user!), and the output filename should be the
# corresponding file name ending with .out.

if (! @ARGV ) {
  say "please state a filename";
} else {
  foreach my $file ( @ARGV ) {
    open( INPUT, '<', $file );
    open( OUTPUT, '>', $file . '.out' );
    while (<INPUT>) {
      s/fred/Larry/gi;
      print OUTPUT;
    }
    close OUTPUT;
  }
}
