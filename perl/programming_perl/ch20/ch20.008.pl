use Test::More;
use Taint::Util qw(tainted taint);

my $tainted = 'This is untainted'; # untainted
taint( $tainted );                 # now tainted

ok( tainted( $tainted ), 'Data are tainted' );
is( refuse_to_work( $tainted ), undef, 'Returns undef with tainted data' );

done_testing();
