#!/usr/bin/env perl
use v5.14;

my $dupword = qr{ \b ( \w+ ) (?: \s+ \g{-1} )+ \b }xi;
my $quoted  = qr{ ( ["'] ) $dupword  \1 }x;
$/ = q();  # cross paragraphs

while (<>) {
    while (/$quoted/pg) {
        printf "%s %d: %s\n", $ARGV, $., ${^MATCH};
    }
} continue {
    close ARGV if eof;
}
