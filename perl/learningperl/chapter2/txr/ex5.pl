#!/usr/bin/perl
use warnings;
use strict;

print "please enter String: ";
chomp (my $string = <STDIN>);
print "please enter number: ";
chomp (my $number = <STDIN>);
while ($number > 0 ) {
				print "$string\n";
				$number -= 1;
}
