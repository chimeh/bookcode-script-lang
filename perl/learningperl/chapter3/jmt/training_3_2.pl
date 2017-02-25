#!/usr/bin/perl -w
use strict;

#Write a program that reads a list of numbers (on separate lines) until end-of-input
#and then prints for each number the corresponding person’s name from the list shown
#below. (Hardcode this list of names into your program. That is, it should appear
#in your program’s source code.) fred betty barney dino wilma pebbles bamm-bamm

my @flintstones = qw ( fred betty barney dino wilma pebbles bamm-bamm );

print "Enter some numbers separated by newlines:\n";
my @numbers = <STDIN>;

my $number;
print "Those numbers correspond to the following flintstones: ";
foreach $number (@numbers) {
	print $flintstones[$number - 1] . " "; # subtract 1 to make it zero-based
}
print "\n";
