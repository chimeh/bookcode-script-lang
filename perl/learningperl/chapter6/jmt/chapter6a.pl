#!/usr/bin/perl

#Write a program that will ask the user for a given name and report
#the corresponding family name. Use the names of people you know, or
#(if you spend so much time on the computer that you don't know any
#actual people) use the following table:
#Input: fred, barney, wilma
#Output: flintstone, rubble, flintstone

use strict;
use warnings;
use 5.014;

my %names = (
	'fred' => 'flintstone',
	'barney' => 'rubble',
	'wilma' => 'flintstone',
	);

say "Enter a given name:";
chomp (my $name = <STDIN>);

if (exists $names{$name}){
	say "The family name is $names{$name}."; #no idea how to avoid fetching the value twice
} else {
	say "There is nobody called $name."
}