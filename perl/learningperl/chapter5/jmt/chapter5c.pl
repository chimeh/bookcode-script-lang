#!/usr/bin/perl

use strict;
use warnings;
use 5.014;

#Modify the previous program to let the user choose the column width,
#so that entering 30, hello, good-bye (on separate lines) would put the
#strings at the 30th column. (Hint: see Interpolation of Scalar Variables
#into Strings in Chapter 2, about controlling variable interpolation.)
#For extra credit, make the ruler line longer when the selected width is larger.

say "Enter a number and then some strings separated by newlines.";
my @lines = <STDIN>;
chomp (my $indent = shift @lines); #remove first element because we don't want to print it

say "123456789012345678901234567890123456789012345678901234567890";
printf "%${indent}s" x @lines, @lines;
