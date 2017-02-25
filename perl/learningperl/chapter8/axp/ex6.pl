use 5.012;
use warnings;

chomp and say "'$_'" foreach grep( /\h+$/, <> );
