use 5.012; # Implies strict
use warnings;

my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";

print above_average(); # Check awkward cases

sub above_average {
  my $avg = average( @_ );
  my @above = ();

  foreach ( @_ ) {
    push @above, $_ if $_ > $avg;
  }

  return @above;
}

sub average {
  return if ( !@_ ); # Avoid div-by-zero; return undef instead
  return total( @_ ) / @_; # Oh, Perl, you so silly.
}

sub total {
  my $total = 0;
  $total += $_ foreach ( @_ );
  return $total;
}
