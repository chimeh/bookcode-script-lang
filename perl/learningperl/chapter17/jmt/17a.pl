#!/usr/bin/perl

use strict;
use warnings;
use 5.014;

my $file = $ARGV[0];

chomp (my @patterns = <STDIN>);

open my $fh, $file or die $!;
while (my $line = <$fh>){
  chomp $line;
  foreach my $pattern (@patterns){
    if(index($line, $pattern) > -1){
      print "$pattern is found on $line\n";
    }
  }
}
close $fh;
#yeah, it's not really what the question asks for
