use 5.012;
use warnings;

my %devln = (
    Thierry => ['Roisin'], # Why the list ref?
    Martin => ['MacDonald'],
    Jonathan => ['Thomson'],
    Ryan => ['McNally'],
    Alex => ['Panayotopoulos', 'Deas'], # Ah, that's why.
    # etc.
);

say "Give me some first names:";
chomp( my $fn = <STDIN> );

while ( $fn ) {
    if ( $devln{$fn} ) {
	say join( ", ", map { "$fn $_" } @{$devln{$fn}} );
    }
    else {
	say "I don't know that developer";
    }

    chomp( $fn = <STDIN> ); # Next
}
