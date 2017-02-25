for $family ( keys %TV ) {
    print "the $family";
    print " is on ", join (" and ", @{ $TV{$family}{nights} }), "\n";
    print "its members are:\n";
    for $who ( @{ $TV{$family}{members} } ) {
        print " $who->{name} ($who->{role}), age $who->{age}\n";
    }
    print "children: ";
    print join (", ", map { $_->{name} } @{ $TV{$family}{kids} } );
    print "\n\n";
}
