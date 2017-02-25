#!/usr/bin/perl
use 5.010;
use warnings;
use strict;

print "Please input a directory: ";
my $dir = <STDIN>;
$dir =~ s/^\s+|\s+$//g;
$dir = $ENV{HOME} if $dir eq "";
chdir( $dir ) or die "could not cd into '$dir'\n";
print "$_\n" foreach sort <*>;
