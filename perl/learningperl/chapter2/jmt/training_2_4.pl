#!/usr/bin/perl -w

#Write a program that prompts for and reads two numbers (on separate lines of input)
#and prints out the product of the two numbers multiplied together.

print "Enter a number: ";
$first_number = <STDIN>;
chomp($first_number);

print "Enter another number: ";
$second_number = <STDIN>;
chomp($second_number);

$product = $first_number * $second_number;
print "$first_number multiplied by $second_number equals $product";