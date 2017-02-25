#!/usr/bin/perl

#Write a program to list all of the keys and values in %ENV. Print
#the results in two columns in ASCIIbetical order. For extra credit,
#arrange the output to vertically align both columns. The length
#function can help you figure out how wide to make the first column.
#Once you get the program running, try setting some new environment
#variables and ensuring that they show up in your output.

use strict;
use warnings;
use 5.014;

my $modified_value;
$ENV{"EMAIL"} = undef;
$ENV{"LOGNAME"} = 0;

foreach my $key (sort keys %ENV){
	$modified_value = $ENV{$key} // "undefined value";
	printf "%-30s %-40s\n", $key, $modified_value;
}
