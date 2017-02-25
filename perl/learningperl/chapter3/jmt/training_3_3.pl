#!/usr/bin/perl -w
use strict;

#Write a program that reads a list of strings (on separate lines) until end-of-input.
#Then it should print the strings in code point order. That is, if you enter the
#strings fred, barney, wilma, betty, the output should show barney betty fred wilma.
#Are all of the strings on one line in the output or on separate lines? Could you
#make the output appear in either style?

print "Enter some strings separated by newlines:\n";
my @sorted_input = sort <STDIN>;
chomp ( my @one_line_sorted_input = @sorted_input );

print "\nI've sorted your stuff: @one_line_sorted_input\n";

print "\nNow I'm including newlines.\n";
print @sorted_input;