use 5.012;
use warnings;
use Scalar::Util qw ( looks_like_number );

say "Gimme some integers.";

while ( 1 ) {
    given ( <STDIN> ) {
	when ( !looks_like_number( $_ ) ) { exit; }
	when ( !( $_ % 3 ) ) { say "Fizz"; continue; }
	when ( !( $_ % 5 ) ) { say "Buzz"; continue; }
	when ( !( $_ % 7 ) ) { say "Sausage"; }
    }
}
