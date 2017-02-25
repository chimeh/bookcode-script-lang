#!/usr/bin/perl

use strict;
use warnings;
use 5.014;

use Scalar::Util qw(looks_like_number);

my $debug_on = 1;
my $random_no = int(1 + rand 100);
debug("Random number is $random_no");

while(1){
    say "Guess the number:";
    chomp (my $input = <STDIN>);
    if($input ~~ ['quit', 'exit', '']){
        debug("Exiting");
        exit;
    } else {
        if(looks_like_number($input)){
            if ($input eq $random_no){
                debug("User's guess was correct. Exiting");
                print "Well done";
                exit;
            } else {
                debug("User's guess was incorrect. Restarting loop");
                ($input < $random_no) ? say "Too low" : say "Too high";
            }
        } else {
            debug("Input was not numerical. Restarting loop");
            say "That's not a number";
        }
    }
}

sub debug {
    my $text = shift @_;
    my $do_debug = $debug_on // 0; #false by default
    say $text if $do_debug;
}