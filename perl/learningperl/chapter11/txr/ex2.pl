use DateTime;
use 5.014;

my $date =  my $now = DateTime->today();
my $strp = 
$date = DateTime->new( year => $ARGV[0], month => $ARGV[1], day =>$ARGV[2]) if ( scalar(@ARGV) == 3 );
my $duration =  $now->subtract_datetime($date);
say $duration->years, ' years ', $duration->months, ' months ' , $duration->days, ' days';

