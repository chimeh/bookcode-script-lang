#! /usr/bin/perl
use warnings;
use strict;
use constant PI => 3.141592654;
print "Enter radius\n";
chomp(my $radius = <STDIN>);
print "\ucircle with radius $radius has circumference ", circumference($radius), "\n";

sub circumference {
	my $radius = shift;
	return 2 * PI * $radius;
}
