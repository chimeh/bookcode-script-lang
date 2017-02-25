#!/usr/bin/perl

#Write a program that reads a series of words (with one word per line)
#until end-of-input, then prints a summary of how many times each word
#was seen (Hint: remember that when an undefined value is used as if
#it were a number, Perl automatically converts it to 0. It may help
#to look back at the earlier exercise that kept a running total.) So,
#if the input words were fred, barney, fred, dino, wilma, fred (all on
#separate lines), the output should tell us that fred was seen 3 times.
#For extra credit, sort the summary words in code point order in the output.

use strict;
use warnings;
use 5.014;

say "Enter a series of words:";
chomp (my @words = <STDIN>);

my %totals = ();
foreach (@words){
	$totals{$_} ++;
}

while (my ($key, $value) = each %totals){
	say "You said $key a total of $value times.";
}
