#!/usr/bin/perl
#read list of strings on separate lines from standard input
#output it in ascii order
#check how it is output (each on one line or all on line)
use strict;
use warnings;

my @strings = <STDIN>;
#each on a separate line (we didn't chomp)
print sort(@strings);
#one line
chomp(@strings);
print join (' ',sort(@strings)), "\n"  ;

