#!/usr/bin/perl
use 5.010;
use strict;
use warnings;

# Make a pattern that will match three consecutive copies of whatever is
# currently contained in $what. That is, if $what is fred, your pattern should
# match fredfredfred. If $what is fred|barney, your pattern should match
# fredfredbarney or barneyfredfred or barneybarneybarney or many other
# variations. (Hint: you should set $what at the top of the pattern test
# program with a statement like my $what = 'fred|barney';.)

my $what = 'fred|barney';

while (<>) {
    chomp;
    if (/($what){3}/) {
        print "Matched: |$`<$&>$'|\n";
    } else {
        print "No match: |$_|\n";
    }
}
