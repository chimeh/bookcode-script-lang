#!/usr/bin/perl

use strict;
use warnings;
use 5.014;
use Scalar::Util qw(looks_like_number);

say "Enter any number:";
chomp (my $input = <STDIN>);
given ($input){
    when (!looks_like_number($input)) {say "not a number"; exit;}
    when ($input % 3 == 0) {say "Fizz"; continue;}
    when ($input % 5 == 0) {say "Bin"; continue;}
    when ($input % 7 == 0) {say "Sausage";}
}
