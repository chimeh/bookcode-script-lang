#! /usr/bin/perl
use warnings;
use 5.12.0;

chomp (my @lines = <>) ;
map { say "$_" . "||"}  grep { /\s$/ } @lines; 
