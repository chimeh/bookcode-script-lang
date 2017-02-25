#!/usr/bin/perl

#Extra credit exercise: write a subroutine, called
#&above_average, which takes a list of numbers and returns
#the ones which are above the average (mean). (Hint: make
#another subroutine that calculates the average by dividing
#the total by the number of items.) Try your subroutine in
#this test program.

use strict;
use warnings;

my @fred = (1..10);
my @fred_above_averages = above_average(@fred);
print "The numbers in \@fred which are above the average are: @fred_above_averages.\n";

my @barney = (100, 1..10);
my @barney_above_averages = above_average(@barney);
print "The numbers in \@barney which are above the average are: @barney_above_averages.\n";

sub mean {
    my @numbers = @_;
    my $size = @numbers;
    my $sum = 0;
    foreach (@numbers){
        $sum += $_;
    }
    my $mean_value = int($sum / $size);
    return $mean_value;
}

sub above_average {
    my @numbers = @_;
    my @above_averages;
    my $this_mean = mean(@numbers);
    foreach (@numbers){
        if($_ > $this_mean){
            push (@above_averages, $_);
        }
    }
    return @above_averages;
}