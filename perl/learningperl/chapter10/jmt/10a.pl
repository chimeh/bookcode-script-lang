#!/usr/bin/perl

use strict;
use warnings;
use 5.014;

use Scalar::Util qw(looks_like_number);

my $random_no = int(1 + rand 100);

while(1){
    say "Guess the number:";
    chomp (my $input = <STDIN>);
    if($input ~~ ['quit', 'exit', '']){
        exit;
    } else {
        if(looks_like_number($input)){
            if ($input eq $random_no){
                print "Well done";
                exit;
            } else {
                ($input < $random_no) ? say "Too low" : say "Too high";
            }
        } else {
            say "That's not a number";
        }
    }
}