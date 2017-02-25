package Foo;
use overload "~~" => "match";

my $obj =  Foo->new();
$obj ~~ [ 1,2,3 ];
