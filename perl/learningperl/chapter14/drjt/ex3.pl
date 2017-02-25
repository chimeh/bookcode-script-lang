#!/usr/bin/perl
use 5.010;
use warnings;
use strict;

print "Input String: ";
chomp( my $string = <STDIN> );

print "Input Substr: ";
chomp( my $substr = <STDIN> );

my $i = index( $string, $substr );
while ( $i != -1 ) {
  say $i;
  $i = index( $string, $substr, $i+1 );
}
