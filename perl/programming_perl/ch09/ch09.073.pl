for $family ( sort keys %HoH ) {
    print "$family: ";
    for $role ( sort keys %{ $HoH{$family} } ) {
         print "$role=$HoH{$family}{$role} ";
    }
    print "\n";
}
