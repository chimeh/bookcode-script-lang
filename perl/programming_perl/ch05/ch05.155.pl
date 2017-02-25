@regexes = ();
for my $pat (@patterns) {
    push @regexes, qr/$pat/;
}
