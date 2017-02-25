sub AUTOLOAD {
    my $name = our $AUTOLOAD;
    *$AUTOLOAD = sub { print "I see $name(@_)\n" };
    goto &$AUTOLOAD;    # Restart the new routine.
}

blarg(30);              # prints: I see main::blarg(30)
glarb(40);              # prints: I see main::glarb(40)
blarg(50);              # prints: I see main::blarg(50)
