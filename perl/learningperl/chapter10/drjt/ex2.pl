#!/usr/bin/perl
use 5.010;
use warnings;
use strict;

my $debug = ( $ARGV[0] // 0 ) eq "debug";

my $goal = int( 1 + rand 100 );
print "target is $goal, " if $debug;
print "Please enter a number between 1 and 100: ";
while ( <STDIN> ) {
  last if /quit|exit/i;
  chomp;
  print "You entered $_, target is $goal, " if $debug;
  if ( !/\A[0-9]/ ) {
    print "Please enter a number between 1 and 100: ";
    next;
  }
  if ( $goal == $_ ) {
    say "Target hit!";
    last;
  }
  say $_ > $goal ? "Too High!" :
      $_ < $goal ? "Too low!":
                      "Something's gone wrong!";
  print "Enter your guess: ";
}
