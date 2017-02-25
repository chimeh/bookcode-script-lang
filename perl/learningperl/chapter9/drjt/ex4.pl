#!/usr/bin/perl
use 5.010;
use warnings;
use strict;

# Extra credit exercise: write a program to add a copyright line to all of your
# exercise answers so far, by placing a line like:
#   ## Copyright (C) 20XX by Yours Truly
# in the file immediately after the .shebang. line. You should edit the files
# "in place," keeping a backup. Presume that the program will be invoked with
# the filenames to edit already on the command line.

if ( ! @ARGV ) {
  say "please include files to be edited in command line";
} else {
  $^I = ".bak";

  while (<>) {
    if ( $. == 1 ) {
      s[(#!/usr/bin/.*)][$1\n  ##Copyright (C) 2015 by David Thrussell];
    }
    print;
  }
}
