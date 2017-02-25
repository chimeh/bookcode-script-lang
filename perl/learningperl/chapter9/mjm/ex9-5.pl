#! perl
# Ex 5
# Looks like it should work, but doesn't (on ActiveState Perl at least)...

use strict;

$^I = ".bak";

my %omit = ();

while (<>) {
	$omit{$ARGV} = 1 if /Copyright blah blah/;
}

while (<>) {
        print;
        print "Copyright blah blah\n" if !$omit{$ARGV} && /(^#!)/;
}
