use utf8;
use v5.10;
use complex;

say "1. √-25 is " => sqrt(-25);
say "2. √36 is "  => sqrt( 36);

eval {
    no complex;

    say "3. √-25 is " => sqrt(-25);
    say "4. √36 is "  => sqrt( 36);
} or say "Error: $@";
