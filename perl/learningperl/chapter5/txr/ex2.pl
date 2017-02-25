#!/usr/bin/perl
use 5.12.0;

chomp(my @strings = <>);
print "1234567890" x8;
# map or foreach
map { printf ("%20s\n",$_); } @strings;
