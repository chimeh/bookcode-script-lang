#!/usr/bin/perl

use strict;
use warnings;
use 5.014;

use Scalar::Util qw(looks_like_number);
my $favourite_num = 27;

chomp (my $input = <STDIN>);
given ($input){
    when (!looks_like_number($input)) {say "not a number"; exit;}
    my @divisors = divisors($input);
    when ($input % $favourite_num == 0) {say "It's divisible by my favourite number"; continue;}
    when ($input % 2 == 0) {say "It's an even number"; continue;}
    when ($input % 2 != 0) {say "It's an odd number"; continue;}
    when (!(divisors($input))) {say "It's a prime number"; exit;}
    say "divisors are: " . join(", ", @divisors);}
sub divisors {
    my $number = shift;

    my @divisors = ();
    foreach my $divisor ( 2 .. ( $number/2 ) ) {
        push @divisors, $divisor unless $number % $divisor;
    }

    return @divisors;
}
