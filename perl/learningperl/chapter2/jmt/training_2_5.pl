#!/usr/bin/perl -w

#Write a program that prompts for and reads a string and a number (on separate
#lines of input) and prints out the string the number of times indicated by the
#number on separate lines. (Hint: use the x operator.) If the user enters “fred”
#and “3”, the output should be three lines, each saying “fred”. If the user enters
#“fred” and “299792,” there may be a lot of output.

print "Enter a string: ";
$first_string = <STDIN>;

print "Enter a number: ";
$second_number = <STDIN>;

$result = $first_string x $second_number;
print $result;