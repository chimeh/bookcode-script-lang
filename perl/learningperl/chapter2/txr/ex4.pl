#!/usr/bin/perl
use warnings;
use strict;

print "please enter first number \n";
chomp (my $number_1 = <STDIN>);
print "please enter second  number \n";
chomp (my $number_2 = <STDIN>);
print "$number_1 * $number_2 = ", $number_1 * $number_2, "\n";
