use 5.012;
use warnings;
use List::Util qw ( reduce );

use constant { ATIME => 8, MTIME => 9 }; # stat
use constant { YEAR => 5, MONTH => 4, DAY => 3 }; # localtime

my $width = reduce { $a > length($b) ? $a : length($b) } 0, glob '*';
printf "%-${width}s%15s%15s\n", $_, sprdate( (stat)[ATIME, MTIME] ) foreach sort glob '*';

sub sprdate {
    return map { sprintf "%d-%02d-%02d", getdate( $_ ) } @_;
}

sub getdate {
    my ( $year, $month, $day ) = (localtime shift @_)[YEAR, MONTH, DAY];
    return ( $year + 1900, $month + 1, $day );
}
