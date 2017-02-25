#! perl

# Chapter 11, Exercise 2

use strict;

use DateTime;

my $now = DateTime->from_epoch( epoch => time );

my $then = DateTime->new( year => $ARGV[0], month => $ARGV[1], day => $ARGV[2] );

my $duration = $now - $then;

my @units = $duration->in_units( qw(years months days) );
 
printf '%d years, %d months, and %d days', @units;
