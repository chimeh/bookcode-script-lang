#!/usr/bin/perl
package Centsible;
sub TIESCALAR { bless \my $self, shift }
sub STORE { ${ $_[0] } = $_[1] }  # do the default thing
sub FETCH { sprintf "%.02f", ${ my $self = shift } } # round value

package main;
tie $bucks, "Centsible";
$bucks = 45.00;
$bucks *= 1.0715; # tax
$bucks *= 1.0715; # and double tax!
print "That will be $bucks, please.\n";
