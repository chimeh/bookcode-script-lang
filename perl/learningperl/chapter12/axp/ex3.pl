use 5.012;
use warnings;

say join "\n", grep { -r -w -o $_ } @ARGV;
