#! perl

# Chapter 6, Exercise 1

use strict;
use 5.010;

my %last_name = (
    "fred" => "flintstone",
    "barney" => "rubble",
    "wilma" => "flintstone",
);

print "First name: ";

chomp (my $first_name = <STDIN>);

say "Last name: $last_name{$first_name}";
