#!/usr/bin/perl
use 5.010;
use warnings;
use strict;


for my $file ( <*> ) {
  my( $atime, $mtime ) = ( stat $file )[8, 9];
  ( $atime, $mtime ) = map { format_date($_) } ( $atime, $mtime );
  printf "%15s%15s%15s\n", $file, $atime, $mtime;
}

sub format_date {
  my ( $year, $mon, $mday ) = ( localtime( shift @_ ) )[5,4,3];
  $year += 1900;
  return sprintf '%04s-%02s-%02s', $year, $mon, $mday;
}
