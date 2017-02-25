#!/usr/bin/perl
use 5.010;
use warnings;
use strict;


my $date = `date`;
if ( $date =~ /^(Mon|Tue|Wed|Thu|Fri)/ ) {
  say "get to work";
}
elsif ( $date =~ /^(Sat|Sun)/ ) {
  say "go play";
}
else {
  say "well shit";
}
