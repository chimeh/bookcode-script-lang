#!/usr/bin/perl
# read list of strings on separate lines
# and outputs them in reverse order
use strict;
use warnings;

my @lines = <STDIN>;
print reverse(@lines);

