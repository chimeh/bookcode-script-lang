use 5.014;
use Scalar::Util qw /looks_like_number/;

my $number = $ARGV[0];

given (looks_like_number($number)) {
	when ( ~~ 0 ) {
		say 'not a number I give up !';	 
	}
	default { 
		given (divisors($number)) {
			when ( ~~ 0 ) {
				say " $number is a prime !";
			}
			default {
				say "divisors for $number : ", join (',',divisors($number)); 
			}
		}
	}
}

sub divisors {
	my $number = shift;
	my @divisors = ();
	foreach my $divisor (2 ..($number/2)) {
		push @divisors, $divisor unless $number % $divisor;
	}
	return @divisors
}
