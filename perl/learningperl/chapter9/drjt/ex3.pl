#!/usr/bin/perl
use 5.010;
use strict;
use warnings;

# Modify the previous program to change every Fred to Wilma and every Wilma to
# Fred. Now input like fred&wilma should look like Wilma&Fred in the output

if (! @ARGV ) {
  say "please state a filename";
} else {
  foreach my $file ( @ARGV ) {
    open( INPUT, '<' $file );
    open( OUTPUT, '>', $file . '.out' );
    while (<INPUT>) {
      s/fred/FRED/gi;
      s/wilma/Fred/gi;
      s/FRED/Wilma/g;
      print OUTPUT;
    }
    close OUTPUT;
  }
}
