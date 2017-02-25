use 5.012;
use warnings;
use Scalar::Util qw ( looks_like_number );

# Nope, still not using smart matching

die "Usage: $0 n\n" if ( @ARGV != 1 );

my $number = shift @ARGV;
die "$number isn't a number\n" if ( !looks_like_number( $number ) );
die "$number isn't an integer\n" if ( $number - int( $number ) );
die "$number isn't strictly positive\n" if ( $number <= 0 );

my @divisors = ();
my @high_divisors = ( $number );

foreach my $i ( 2 .. sqrt( $number ) ) {
    if ( !( $number % $i ) ) {
	push @divisors, $i;
	unshift @high_divisors, $number / $i;
    }
}

pop @high_divisors if ( @divisors && ( $high_divisors[0] == $divisors[-1] ) );
push @divisors, @high_divisors;

say "$number is " . ( $divisors[0] == 2 ? "even" : "odd" );
say "$number is divisible by thirteen" if ( grep { $_ == 13 } @divisors );
say ( ( @divisors == 1 ) ? "$number is prime" : "Divisors: " . join( ", ", @divisors ) );
