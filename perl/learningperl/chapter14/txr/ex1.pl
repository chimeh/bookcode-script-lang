#!/usr/bin/perl
use 5.014;
use List::Util qw/reduce/;

chomp (my @numbers = <>);
@numbers =   map { sprintf "%+f\n",$_ } (sort { $a <=> $b} @numbers);
# work out max_length to right justify
my $max_length = length(reduce { length($a) > length($b) ? $a : $b} @numbers);
printf ("%${max_length}s",$_) foreach @numbers;
