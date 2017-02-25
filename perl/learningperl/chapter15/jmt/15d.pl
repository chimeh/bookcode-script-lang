#!/usr/bin/perl

use strict;
use warnings;
use 5.014;

use Scalar::Util qw(looks_like_number);

chomp (my $input = <STDIN>);
given ($input){
    when (!looks_like_number($input)) {say "not a number"; exit;}
    my @divisors = divisors($input);
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