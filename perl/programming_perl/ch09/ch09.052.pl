use Unicode::Collate;
my $sorter = Unicode::Collate->new();  # normal alphabetic sort
say "$family: ",
    join ", " => $sorter->sort( @{ $HoA{$family} } );
