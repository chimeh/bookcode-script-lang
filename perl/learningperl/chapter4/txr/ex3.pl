#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

my @fred =  &above_average(1..10);
say "\@fred is @fred";
say 'Should be 6 7 8 9 10';
my @barney =  &above_average(100,1..10);
say "\@barney is @barney";
say 'Should be just 100';

sub average {
	my $tot=0;
	foreach(@_) {
					$tot += $_;
	}
	$tot/@_;
}

sub above_average {
	my $average = &average(@_);
	my @list = grep { $_ > $average } @_;
}
