#!/usr/bin/perl

use strict;
use warnings;
use 5.014;

while (<>) {                   # take one input line at a time
    chomp;
    if (/(\w+a)\z/) {
        print "\$1 contains $1\n";  # the special match vars
    } else {
        print "No match: |$_|\n";
    }
}
