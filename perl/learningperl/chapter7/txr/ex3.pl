#!/usr/bin/perl
use strict;
use warnings;
use 5.12.0;

chomp (my @lines = <>);
map { say $_ if /\./} @lines; 
