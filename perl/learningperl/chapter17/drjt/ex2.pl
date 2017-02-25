#!/usr/bin/perl
use 5.010;
use warnings;
use strict;

for my $file ( <*> ) {
  my( $atime, $mtime ) = ( stat $file )[8, 9];
  printf "%15s%15s%15s\n", $file, $atime, $mtime;
}
