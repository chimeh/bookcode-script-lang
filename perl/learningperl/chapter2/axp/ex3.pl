use strict;
use 5.010;
use Math::Trig ':pi';

print "Radius> ";
my $num = <STDIN>;

if ( $num > 0 ) {
  say 2 * pi * $num;
}
else {
  say 0;
}

