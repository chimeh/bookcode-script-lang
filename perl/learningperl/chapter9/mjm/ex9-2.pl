#! perl
# Ex 2

open INPUT, '<', $ARGV[0];
open OUTPUT, '>', "$ARGV[0].out";

while (<INPUT>) {
	s/fred/Larry/ig;
	print OUTPUT;
}

close OUTPUT;
close INPUT
