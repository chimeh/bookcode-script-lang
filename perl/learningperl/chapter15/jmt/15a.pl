#!/usr/bin/perl

use strict;
use warnings;
use 5.014;

use Scalar::Util qw(looks_like_number);

my $random_no = int(1 + rand 100);

while(1){
    say "Guess the number:";
    chomp (my $input = <STDIN>);
    given ($input){
        when ($input ~~ ['quit', 'exit', '']) {say "exiting"; exit;}
        when (!looks_like_number($input)) {say "not a number"; exit;}
        when ($input < $random_no) {say "Too low"}
        when ($input > $random_no) {say "Too high"}
        default {say "well done"; exit;}    }
}
