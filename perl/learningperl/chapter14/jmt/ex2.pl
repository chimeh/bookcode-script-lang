#!/usr/bin/perl
 
use strict;
use warnings;
use 5.014;
 
my %unsorted_names = qw{
  fred flintstone Wilma Flintstone Barney Rubble
  betty rubble Bamm-Bamm Rubble PEBBLES FLINTSTONE
};
 
my @sorted_names = sort by_both_names keys %unsorted_names;

my @all_names;
foreach (@sorted_names) {
  push @all_names, "$_ ";
  push @all_names, "$unsorted_names{$_}\n";
}

print @all_names;

sub by_both_names {
  ("\L$unsorted_names{$a}" cmp "\L$unsorted_names{$b}")
    or
  ("\L$a" cmp "\L$b")
}
