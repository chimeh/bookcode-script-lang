for $family (keys %TV) {
    my $rec = $TV{$family};   # temporary pointer
    @kids = ();
    for $person ( @{$rec->{members}} ) {
        if ($person->{role} =~ /kid|son|daughter/) {
            push @kids, $person;
        }
    }
    # $rec and $TV{$family} point to same data!
    $rec->{kids} = [ @kids ];
}
