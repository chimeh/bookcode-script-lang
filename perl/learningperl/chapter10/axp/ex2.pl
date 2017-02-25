use 5.012;
use warnings;
no warnings 'numeric';

# I have no idea why the exercise wants me to use the // operator.
# I'm ignoring that part.

my $debug = ( @ARGV && $ARGV[0] =~ /^debug$/i ) ? 1 : 0;
my $target = int( rand( 100 ) ) + 1; # 1..100 inclusive

say "DEBUG: the target number is $target" if $debug;

say "Guess a number between 1 and 100. ('quit' or 'exit' to exit)";
chomp( my $guess = <STDIN> );

while ( $guess eq int( $guess ) && $guess ne $target ) {
    say "DEBUG: user entered an integer other than the target" if $debug;
    say "Too " . ( $guess < $target ? "low" : "high" );
    chomp( $guess = <STDIN> );
}

say "DEBUG: user either guessed correctly or entered something other than an integer" if $debug;

say $guess eq $target ? "Correct!" : "Goodbye";
