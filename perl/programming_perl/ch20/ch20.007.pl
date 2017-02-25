use Taint::Util qw(tainted taint);

my $scalar = 'This is untainted'; # untainted
taint( $scalar );                 # now tainted
