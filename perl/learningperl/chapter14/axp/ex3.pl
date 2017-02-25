use 5.012;
use warnings;

my $needle = shift @ARGV || 'is';
my $haystack = join( ' ', @ARGV ) || 'This is a test.';

$_ = -1;

say while ( $_ = index( $haystack, $needle, $_ + 1 ) ) != -1;

