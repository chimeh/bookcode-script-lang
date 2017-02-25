use 5.012;
use warnings;

use DateTime;

if ( @ARGV != 3 || $ARGV[0] !~ /^\d{1,4}$/ || $ARGV[1] !~ /^\d\d?$/ || $ARGV[2] !~ /^\d\d?$/ ) {
    die "Usage: $0 yyyy mm dd\n";
}

my $then;

eval {
    $then = DateTime->new( year => $ARGV[0], month => $ARGV[1], day => $ARGV[2] );
}
or die "Date does not exist: " . join( '-',  @ARGV ) . "\n";

my $now = DateTime->today; # Don't use DateTime->now, or we get out-by-one errors
my $duration = $now - $then;
my $modifier = "ago";

if ( $duration->is_negative ) {
    $duration = $duration->inverse;
    $modifier = "in the future";
}

my ( $y, $m, $d ) = $duration->in_units( qw(years months days) );
printf "%d years, %d months, and %d days %s\n", $y, $m, $d, $modifier;
