use strict;
use warnings;
use Test::More;

BEGIN { use_ok( "Math::MySum" ) }
can_ok( "Math::MySum", "my_sum" );

my($i, $j) = (1, 3);
my $string = "Amelia";

is($i + $j, Math::MySum->my_sum( $i, $j ),
    "Sum of $i and $j is 4");

like($string, qr/mel/, "String has mel in it");

done_testing;
