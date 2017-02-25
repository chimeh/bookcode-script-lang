open(MAILRC, "~/.mailrc")                # WRONG: tilde is a shell thing
    || die "can't open ~/.mailrc: $!";

open(MAILRC, <~/.mailrc>)                # expand tilde first
    || die "can't open ~/.mailrc: $!";

open(MAILRC, (glob("~/.mailrc"))[0])     # same, but more 
    || die "can't open ~/.mailrc: $!";   # careful of list return
