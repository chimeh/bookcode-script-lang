while ( @fields = get_next_pair() ) {
    push @AoH, { @fields };
}

while (<>) {
    push @AoH, { get_next_pair($_) };
}
