#!/usr/bin/perl
use 5.010;
use warnings;
use strict;


my %last_name = qw{
  fred flintstone Wilma Flintstone Barney Rubble
  betty rubble Bamm-Bamm Rubble PEBBLES FLINTSTONE
};

say "$_ $last_name{$_}" foreach ( sort { "\L$last_name{$a}" cmp "\L$last_name{$b}" or "\L$a" cmp "\L$b" } keys %last_name );
