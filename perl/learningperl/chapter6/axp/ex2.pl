use 5.012;
use warnings;

# I'm going off-exercise again because one word per line is tedious.
say "Give me a paragraph of text:";
my %count = ();

foreach my $word ( split( /\s+/, <STDIN> ) ) {
    $word =~ s/[^A-Za-z'-]//g; # Delete punctuation
    $count{lc $word}++; # Normalise case
}

foreach my $word ( sort keys %count ) {
    say "\t$word -> $count{$word}";
}
