#!/usr/bin/perl

use strict;
use warnings;
use 5.014;

while (<>) {                   # take one input line at a time
    chomp;
    if (/(?<word>\w+a)\z/) {
        print "\$word contains $+{word}\n";  # the special match vars
    } else {
        print "No match: |$_|\n";
    }
}
