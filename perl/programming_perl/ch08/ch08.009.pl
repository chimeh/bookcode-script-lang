sub hashem {        { @_ } }   # Silently WRONG — returns @_.
sub hashem {       +{ @_ } }   # Ok.
sub hashem { return { @_ } }   # Ok.
