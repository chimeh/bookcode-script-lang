#! perl
# Chapter 15, Exercise 1

use strict;
use 5.010001;

my $secret_number = int(1 + rand 100);
my $guess = 0;

for( ;; ) {
	say "Guess the number (1 - 100)";
	$guess = <STDIN>;
	chomp $guess;
	
	given( $guess ) {
		when( $_ eq "" or $_ eq "quit" or $_ eq "exit" ) {  say "Bye"; last; }
		when( $_ == $secret_number ) { say "Correct"; say last; }
		when( $_ > $secret_number ) { say "Too high" }
		when( $_ < $secret_number ) { say "Too low" }
	}
}