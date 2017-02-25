#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

&greet('Fred');
&greet('Barney');

sub greet {
	state @names;
	if ( @names == 0 ) {
		say "Hi $_[0], you are the first one here!";
	} else {
    say "Hi $_[0], $names[$#names] is also here!"; 
	}
	push @names,@_;
}
