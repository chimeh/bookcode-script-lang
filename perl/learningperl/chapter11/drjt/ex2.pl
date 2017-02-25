#!/usr/bin/perl
use 5.010;
use warnings;
use strict;

use local::lib;
use DateTime;

die "incorrect number of arguments! should be \$ ./ex2.pl year month day\n" unless $ARGV == 3;

my $dt = DateTime->from_epoch( epoch => time );

my ( $year, $month, $day ) = @ARGV;

my $dt1 = DateTime->new(
    year  => $year,
    month => $month,
    day   => $day,
  );

my $duration = $dt - $dt1;
printf '%d years, %d months, and %d days', $duration->year, $duration->month, $duration->day;
