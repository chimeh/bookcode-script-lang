use 5.012; # Implies strict
use warnings;

my $manual_sum = total( 1..1000 );
my $fast_sum = ( 1000 * 1001 ) / 2;

if ( $manual_sum == $fast_sum ) {
  say "The sum of integers from 1 to 1000 is $manual_sum";
}
else {
  die "Ok, who broke maths?";
}

sub total {
  my $total = 0;
  $total += $_ foreach ( @_ );
  return $total;
}
