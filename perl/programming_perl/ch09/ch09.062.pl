for $i ( 0 .. $#AoH ) {
    print "$i is { ";
    for $role ( keys %{ $AoH[$i] } ) {
         print "$role=$AoH[$i]{$role} ";
    }
    print "}\n";
}
