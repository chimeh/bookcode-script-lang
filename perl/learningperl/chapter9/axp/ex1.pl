use 5.012;
use warnings;

# Note: Literally doing what the exercise asks ("make a pattern that will match three
# consecutive copies of whatever is *currently contained* in $what") is difficult if
# not impossible. When you create a pattern, it will evaluate $what to a specific
# value. When you next change $what, the pattern will continue to match the previous
# value.
#
# Besides which, this implies qr//, which we haven't covered.
# </pedantry>

my $str = "fredfredbarneybarneybarneyfredfredfred";

say match3( 'fred', $str );         # fredfredfred
say match3( 'barney', $str );       # barneybarneybarney
say match3( 'fred|barney', $str );  # fredfredbarney

sub match3 {
    my ( $what, $str ) = @_;
    return $str =~ /((?:$what){3})/;
}
