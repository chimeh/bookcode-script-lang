{
    local $SIG{INT} = "IGNORE";
    ...     # Do whatever you want here, ignoring all SIGINTs.
    fn();   # SIGINTs ignored inside fn() too!
    ...     # And here.
}           # Block exit restores previous $SIG{INT} value.

fn();       # SIGINTs not ignored inside fn() (presumably).
