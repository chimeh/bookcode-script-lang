use 5.012;
use warnings;
use Scalar::Util qw ( looks_like_number );

# Yeah, there's no good reason to use smart matching here.

die "Usage: $0 n\n" if ( @ARGV != 1 );

my $number = shift @ARGV;
die "$number isn't a number\n" if ( !looks_like_number( $number ) );
die "$number isn't an integer\n" if ( $number - int( $number ) );
die "$number isn't strictly positive\n" if ( $number <= 0 );

my @low_divisors = ();
my @high_divisors = ();

foreach my $i ( 2 .. sqrt( $number ) ) {
    if ( !( $number % $i ) ) {
	push @low_divisors, $i;
	unshift @high_divisors, $number / $i;
    }
}

pop @high_divisors if ( @high_divisors && ( $high_divisors[0] == $low_divisors[-1] ) );

say @low_divisors ? "Divisors: " . join( ", ", @low_divisors, @high_divisors ) : "$number is prime";
