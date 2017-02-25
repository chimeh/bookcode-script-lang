#!/usr/bin/perl
use 5.010;
use warnings;
use strict;

say "wrong number of arguments!" if scalar @ARGV != 2;
my $target = shift @ARGV;
my $link = shift @ARGV;
( -d $target ) and die "Cannot ln to a directory!\n";
link( $target, $link ) or die "Could not link $target to $link : $!\n";
