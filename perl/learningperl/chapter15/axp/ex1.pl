use 5.012;
use warnings;
use Scalar::Util qw ( looks_like_number );

# As per my original implementation, the user can type any non-number to quit

my $target = int( rand( 100 ) ) + 1; # 1..100 inclusive

say "Guess a number between 1 and 100. ('quit' or 'exit' to exit)";

while ( 1 ) {
    given ( <STDIN> ) {
	when ( !looks_like_number( $_ ) ) { say "Goodbye"; exit; }
	when ( $_ < $target ) { say "Too low"; }
	when ( $_ > $target ) { say "Too high"; }
	default { say "Correct!"; exit; }
    }
}
