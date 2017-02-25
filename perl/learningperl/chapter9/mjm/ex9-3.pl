#! perl
# Ex 3

open INPUT, '<', $ARGV[0];
open OUTPUT, '>', "$ARGV[0].out";

while (<INPUT>) {
        s/fred/TMP/ig;
        s/wilma/Fred/ig;
	s/TMP/Wilma/g;
        print OUTPUT;
}

close OUTPUT;
close INPUT
