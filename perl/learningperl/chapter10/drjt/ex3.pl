#!/usr/bin/perl
use 5.010;
use warnings;
use strict;

sub maxlength {
  my $max = length shift @_;
  foreach ( @_ ) {
    if ( length $_ > $max ) {
      $max = length $_
    };
  };
  return $max;
};


my @keys = sort keys %ENV;
my $length = maxlength @keys;
foreach (@keys) {
  printf "%${length}s | %s \n", $_, $ENV{$_} // "(undefined value)";
};
