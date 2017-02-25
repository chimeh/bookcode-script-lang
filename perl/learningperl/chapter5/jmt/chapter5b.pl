#!/usr/bin/perl

use strict;
use warnings;
use 5.014;

#Write a program that asks the user to enter a list of strings on separate
#lines, printing each string in a right-justified, 20-character column. To be
#certain that the output is in the proper columns, print a .ruler line. of
#digits as well. (This is simply a debugging aid.) Make sure that you.re not
#using a 19-character column by mistake! For example, entering hello, good-bye
#should give output something like this:

say "Enter some strings separated by newlines.";
my @lines = <STDIN>;

say "123456789012345678901234567890123456789012345678901234567890";
printf "%20s" x @lines, @lines;
