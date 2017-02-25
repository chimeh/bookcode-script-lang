#! perl

# Chapter 6, Exercise 2

use strict;
use 5.010;

my %words;
while(<STDIN>){
    chomp;
    $words{$_}++;
}

foreach ( sort keys %words ) {
    say "$_: $words{$_}";
}