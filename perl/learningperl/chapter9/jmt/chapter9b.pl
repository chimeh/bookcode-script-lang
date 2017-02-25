#!/usr/bin/perl

use strict;
use warnings;
use 5.014;

my $newfilename = "@ARGV.out";
open(my $fh, '>', $newfilename) or die "Could not open file $newfilename $!";

while(<>){
    chomp;
    s/fred/Larry/i;
    say $fh $_;
}

close $fh;