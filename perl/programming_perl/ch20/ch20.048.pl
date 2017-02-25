#!/usr/bin/perl -w
# safecalc - demo program for playing with Safe
use strict;
use Safe;
my $sandbox = Safe->new();
while (1) {
    print "Input: ";
    my $expr = <STDIN>;
    exit unless defined $expr;
    chomp($expr);
    print "$expr produces ";
    local $SIG{__WARN__} = sub { die @_ };
    my $result = $sandbox->reval($expr, 1);
    if ($@ =~ s/at \(eval \d+\).*//) {
        printf "[%s]: %s", $@ =~ 
            /trapped by operation mask/
            ? "Security Violation" : "Exception", $@;
    }
    else {
        print "[Normal Result] $result\n";
    }
}
