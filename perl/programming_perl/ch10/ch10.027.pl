sub AUTOLOAD {
    our $AUTOLOAD;
    return "I see $AUTOLOAD(@_)\n";
}

print blarg(20);        # prints: I see main::blarg(20)
