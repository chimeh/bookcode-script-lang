#!/usr/bin/perl

#Using the subroutine from the previous problem, make a
#program to calculate the sum of the numbers from 1 to 1,000.

use strict;
use warnings;

my @fred = (1..1000);
my $fred_total = total(@fred);
print "The total of \@fred is $fred_total.\n";

sub total {
    my @numbers = @_;
    my $sum = 0;
    foreach (@numbers){
        $sum += $_;
    }
    return $sum;
}