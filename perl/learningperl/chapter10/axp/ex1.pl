use 5.012;
use warnings;
no warnings 'numeric';

# Technically this solution lets you quit with *anything* which isn't an
# integer -- which I reckon is fair enough since the exercise didn't specify
# correct behaviour for any other value.

my $target = int( rand( 100 ) ) + 1; # 1..100 inclusive

say "Guess a number between 1 and 100. ('quit' or 'exit' to exit)";
chomp( my $guess = <STDIN> );

while ( $guess eq int( $guess ) && $guess ne $target ) {
    say "Too " . ( $guess < $target ? "low" : "high" );
    chomp( $guess = <STDIN> );
}

say $guess eq $target ? "Correct!" : "Goodbye";
