use 5.012;
use warnings;
use List::Util qw /max/;

my $width = max( map { length } keys %ENV );
my $fmt = "%${width}s  %s\n";

printf( $fmt, "KEY", "VALUE" );
say '-' x $width, '  ', '-' x ( 78 - $width ); # Fancy divider
printf( $fmt, $_, $ENV{$_} ) foreach ( sort keys %ENV );

