#!/usr/bin/perl
use 5.010;
use warnings;
use strict;

say "wrong number of arguments!" if scalar @ARGV != 2;
my $old = shift @ARGV;
my $new = shift @ARGV;
if ( -d $new ) {
  $new .= '/' if $new =~ m#[^/]$#;
  $new .= $1 if $old =~ m#([^/]+)$#;
}
rename( $old => $new ) or die "error when moving $old to $new : $!\n";
