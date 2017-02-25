#!/usr/bin/perl

use strict;
use warnings;
use 5.014;

use POSIX qw/strftime/;
use DateTime;

chomp (my $current_year = strftime('%Y',localtime));
chomp (my $current_month = strftime('%m',localtime));
chomp (my $current_day = strftime('%d',localtime));

my $user_date = DateTime->new( 
     year       => $ARGV[0],
     month      => $ARGV[1],
     day        => $ARGV[2],
     );
    
my $current_date = DateTime->new(
     year       => $current_year,
     month      => $current_month,
     day        => $current_day,
    );
    
my $duration = $current_date - $user_date;
my @units = $duration->in_units( qw(years months days) );

printf '%d years, %d months, and %d days', @units;