#!/usr/bin/perl
use 5.010;
use warnings;
use strict;

die "Needs one command line argument!\n" unless scalar @ARGV == 1;

given( $ARGV[0] ) {
  when( ! /^-?\d+$/ ) { say "Not an integer!\n" }
  when( $_ < 0 ) { say "negative number - nope" }
  when( $_ < 2 ) { say "nope" }
  when( divisors ($_) ) { say join( ' ', divisors($_) ) }
  default { say "$_ is prime!" }
}


sub divisors {
  my $number = shift;
  my @divisors = ();
  foreach my $divisor ( 2 .. ( $number / 2 ) ) {
    push @divisors, $divisor unless $number % $divisor;
  }
  return @divisors;
}
