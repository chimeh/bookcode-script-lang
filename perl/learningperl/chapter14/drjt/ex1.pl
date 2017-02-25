#!/usr/bin/perl
use 5.010;
use warnings;
use strict;

sub maxlength {
  my $max = length( shift @_ );
  foreach ( @_ ) {
    $max = length $_ if length $_ > $max;
  }
  return $max;
}


my @nums = sort { $a <=> $b } @ARGV;
my $length = maxlength @nums;
printf "%${length}g\n", $_ foreach @nums;
