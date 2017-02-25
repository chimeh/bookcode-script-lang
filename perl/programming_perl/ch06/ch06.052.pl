use v5.14;
use utf8;
use Unicode::Collate;
my $Collator = Unicode::Collate->new(
                  level  => 1,
                  normalization => undef,
               );

my $full = "Gabriel García Márquez";
for my $sub (qw[MAR CIA]) {
    if (my($pos,$len) = $Collator->index($full, $sub)) {
        my $match = substr($full, $pos, $len);
        say "Found match of literal ‹$sub› in ‹$full› as ‹$match›";
    }
}
