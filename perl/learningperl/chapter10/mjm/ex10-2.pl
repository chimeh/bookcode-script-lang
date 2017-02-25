#! perl

# Chapter 10, Exercise 2

use strict;
use 5.010;

my $secret_number = int(1 + rand 100);

my $debug;

# Comment out to disable.
$debug = "DEBUG: secret number is $secret_number";

say $debug // '';

my $guess = 0;

for( ;; ) {
	say "Guess the number (1 - 100)";
	$guess = <STDIN>;
	chomp $guess;

	if($guess eq "" or $guess eq "quit" or $guess eq "exit") {
		say "Bye";
		last;
	}

	if($guess == $secret_number) {
		say "Correct";
		last;
	}
	elsif($guess > $secret_number) {
		say "Too high";
	}
	elsif($guess < $secret_number) {
		say "Too low";
	}
}
