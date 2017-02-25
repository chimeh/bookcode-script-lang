#!/usr/bin/perl -00p
use feature "say";
while ( /( (.+) ( (?<=\\) \n .* )+ ) /gx) {
    say "GOT $.: $1\n";
}
