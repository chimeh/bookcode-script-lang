#!/usr/bin/perl
use 5.12.0;

my $what = shift @ARGV;
my $line = <STDIN>;
say "match " if $line =~ /($what){3}/;
