use List::Util qw(first);

$first_over_100  = first { $_ > 100 } @list;
$first_with_foo  = first { /foo/ } @list;
