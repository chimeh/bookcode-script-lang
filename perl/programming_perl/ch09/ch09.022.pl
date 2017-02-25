use v5.14;                  # for push on scalars
use Data::Dump qw(dump);    # CPAN module

my @AoA = (
       [ "fred", "barney" ],
       [ "george", "jane", "elroy" ],
       [ "homer", "marge", "bart" ],
);
push $AoA[0], "wilma", "betty";
dump \@AoA;
