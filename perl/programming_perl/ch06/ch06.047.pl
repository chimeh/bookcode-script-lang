my $collator = Unicode::Collate->new(
    upper_before_lower => 1,
    preprocess => sub {
        local $_ = shift;
        s/^ (?: The | An? ) \h+ //x;  # strip articles
        s/ ( \d+ ) / sprintf "%020d", $1 /gex;
        return $_;
    },
);
