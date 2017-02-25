use Unicode::Collate::Locale;
my $Collator = new Unicode::Collate::Locale::
                locale => "de__phonebook",
                level  => 1,
                normalization => undef,
               ;

my $full = "Ich müß Perl studieren.";
my $sub = "MUESS";
if (my ($pos,$len) = $Collator->index($full, $sub)) {
    my $match = substr($full, $pos, $len);
    say "Found match of literal ‹$sub› in ‹$full› as ‹$match›";
}
