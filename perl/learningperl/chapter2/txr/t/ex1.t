use Test::Output;
use Test::More tests => 1;
use strict;
use warnings;

stdout_is (\&testfunc, "Circle with radius 12.5 has circumference 78.53981635\n");

sub testfunc {
				do '/home/thierry/development/perl/lp/learningperl/chapter2/txr/ex1.pl'
}
