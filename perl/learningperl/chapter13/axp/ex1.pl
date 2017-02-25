use 5.012;
use warnings;

my $dir = $ARGV[0] // $ENV{'HOME'};
chdir $dir or die "Couldn't switch to directory $dir; $!\n";
say foreach sort glob '*';
