#!/usr/bin/perl

use strict;
use warnings;
use 5.014;

#Write a program that acts like cat, but reverses the order of the output lines.
#(Some systems have a utility like this named tac.) If you run yours as ./tac fred
#barney betty, the output should be all of file betty from last line to first, then
#barney and then fred, also from last line to first. (Be sure to use the ./ in your
#program.s invocation if you call it tac so that you don.t get the system.s utility instead!)

my @output_array;

while (<>) {
    push ( @output_array, $_);
}

print reverse @output_array;
