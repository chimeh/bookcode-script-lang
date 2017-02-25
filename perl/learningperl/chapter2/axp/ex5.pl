use strict;
use 5.010;

print "String to repeat> ";
my $str = <STDIN>;

print "Number of times> ";
my $times = <STDIN>;

print $str x $times;

