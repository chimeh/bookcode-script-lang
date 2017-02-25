#!/usr/bin/perl
use 5.014;
my %last_names = qw {
	fred flintstone Wilma Flintstone Barney Rubble
	betty rubble Bamm-Bamm Rubble PEBBLES FLINTSTONE
};
my @sort =  sort { 
								"\L$last_names{$a}" cmp "\L$last_names{$b}" 
												or 
								 lc($a) cmp lc($b) } 
					   keys  %last_names;

say $_ , ' ', $last_names{$_} foreach @sort;
