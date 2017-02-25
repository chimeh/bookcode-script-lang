for $href ( @AoH ) {
    print "{ ";
    for $role ( keys %$href ) {
         print "$role=$href->{$role} ";
    }
    print "}\n";
}
