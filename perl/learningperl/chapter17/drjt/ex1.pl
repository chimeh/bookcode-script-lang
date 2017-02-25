#!/usr/bin/perl
use 5.010;
use warnings;
use strict;

my @lines;

while ( <> ) {
  chomp $_;
  push @lines, $_;
}
while ( 1 ) {
  print "please enter a pattern: ";
  chomp( my $pattern = <STDIN> );
  say scalar grep /$pattern/, @lines;
}
