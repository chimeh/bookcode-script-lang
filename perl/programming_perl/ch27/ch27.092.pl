exec ("foo")   || print STDERR "couldn't exec foo: $!";
{ exec ("foo") }; print STDERR "couldn't exec foo: $!";
