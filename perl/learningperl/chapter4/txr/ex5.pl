#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

&greet('Fred');
&greet('Barney');
&greet('Wilma');
&greet('Betty');

sub greet {
	state @names;
	if ( @names == 0 ) {
		say "Hi $_[0], you are the first one here!";
	} else {
    say "Hi $_[0], I have seen @names"; 
	}
	push @names,@_;
}
