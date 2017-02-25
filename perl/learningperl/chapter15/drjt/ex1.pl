#!/usr/bin/perl
use 5.014;
use warnings;
use strict;


my $goal = int( 1 + rand 100 );
while ( 1 ) {
  print "Please enter a number between 1 and 100: ";
  given ( <STDIN> ) {
    when ( /quit|exit/i ) { last }
    when ( !/\A\d/ ) { printf "%s is not a number!\n", $_ }
    when ( $goal ) { say "Target hit!"; last }
    when ( $_ > $goal ) { say "Too high!" }
    when ( $_ < $goal ) { say "Too low!" }
    default { say "something's gone wrong!" }
  }
}
