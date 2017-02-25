use 5.012;
use warnings;
use List::Util qw( reduce );

chomp( my @nums = <> );

my $width = reduce { $a > length($b) ? $a : length($b) } 0, @nums;
printf "%${width}s\n", $_ foreach sort { $a <=> $b } @nums;
