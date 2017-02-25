#!/usr/bin/perl
use 5.010;
use warnings;
use strict;

use Getopt::Std;

our $opt_s = 0;

getopts( 's' );

scalar @ARGV == 2 or die "wrong number of arguments!"; 
my $target = shift @ARGV;
my $link = shift @ARGV;
if ( $opt_s ) {
  symlink( $target, $link ) or die "Could not symlink $target to $link : $!\n";
}
else {
  ( -d $target ) and die "Cannot ln to a directory!\n";
  link( $target, $link ) or die "Could not link $target to $link : $!\n";
}
