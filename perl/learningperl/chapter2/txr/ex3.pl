#! /usr/bin/perl
use warnings;
use constant PI => 3.141592654;
use strict;
print "Enter radius\n";
chomp(my $radius = <STDIN>);
print "\ucircle with radius $radius has circumference ", circumference($radius), "\n";

sub circumference {
	my $radius = shift;
	$radius = 0 if ($radius < 0);
	return 2 * PI * $radius;
}
