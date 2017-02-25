my $collator = Unicode::Collate->new();
for my $rec (@recs) {
    $rec->{NAME_key} = $collator->getSortKey( $rec->{NAME} );
}
@srecs = sort {
    $b->{AGE}       <=>  $a->{AGE}
                    ||
    $a->{NAME_key}  cmp  $b->{NAME_key}
} @recs;
