#!/usr/bin/perl
use 5.010;
use warnings;
use strict;

# Extra extra credit exercise: modify the previous program so that it doesn't
# edit the files that already contain the copyright line. As a hint on that,
# you might need to know that the name of the file being read by the diamond
# operator is in $ARGV.

if ( ! @ARGV ) {
  say "please include files to be edited in command line";
} else {
  my $copyright_exists = 0;
  while (<>) {
    if ( /##Copyright (C) / ) {
      $copyright_exists = 1;
      last;
    } elsif ( $. > 2 ) {
      last;
    }
  }
  if ( $copyright_exists ) {
    $^I = ".bak";
    while (<>) {
      if ( $. == 1 ) {
        s[(#!/usr/bin/.*\n)][$1  ##Copyright (C) 2015 by David Thrussell\n];
      }
      print;
    }
  }
}
