sub AUTOLOAD {
    our $AUTOLOAD;
    warn "Attempt to call $AUTOLOAD failed.\n";
}

blarg(10);              # our $AUTOLOAD will be set to main::blarg
print "Still alive!\n";
