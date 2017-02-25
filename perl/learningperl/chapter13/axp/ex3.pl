use 5.012;
use warnings;

# This also does away with the changing directories part of things.
# Which makes no real functional difference.

my $dir = $ARGV[0] // $ENV{'HOME'};
opendir my $dh, $dir or die "Can't open directory $dir; $!\n";
say foreach sort readdir $dh;
close $dh;
