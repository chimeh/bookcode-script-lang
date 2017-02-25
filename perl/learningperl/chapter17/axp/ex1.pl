use 5.012;
use warnings;

die "Usage: $0 file1 [file2...]\n" unless @ARGV;

my @strings = <>;

print "Enter a pattern to search for (enter to exit):\n> ";
chomp( my $pat = <STDIN> );

while ( $pat ) {
    my @matched = eval { grep /$pat/, @strings };
    say $@ ? "Invalid pattern!" : scalar @matched . " results;\n  " . join( "  ", @matched );
    print "> ";
    chomp( $pat = <STDIN> );
}
