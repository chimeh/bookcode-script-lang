#!/usr/bin/perl
use 5.010;
use warnings;
use strict;


foreach ( @ARGV ) {
  if ( -e $_ ) {
    my @permissions = $_;
    push @permissions, (-r)?"":"not ";
    push @permissions, (-w)?"":"not ";
    push @permissions, (-x)?"":"not ";
    printf "%s is %sreadable, %swriteable, and %sexecutable.\n", @permissions;
  }
  else {
    print "$_ doesn't exist!\n";
  }
}
