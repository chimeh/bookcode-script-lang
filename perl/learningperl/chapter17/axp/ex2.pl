use 5.012;
use warnings;
use List::Util qw ( reduce );

use constant { ATIME => 8, MTIME => 9 };

my $width = reduce { $a > length($b) ? $a : length($b) } 0, glob '*';
printf "%-${width}s%15s%15s\n", $_, (stat)[ATIME, MTIME] foreach sort glob '*';
