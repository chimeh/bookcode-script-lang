#!/usr/bin/perl

use strict;
use warnings;
use 5.014;

while (<>) {                   # take one input line at a time
    chomp;
    if (/(?<space>\p{Space})\z/) {
        print "match found: $_\n";  # the special match vars
    } else {
        print "No match: |$_|\n";
    }
}
#no idea what a marker character is...
