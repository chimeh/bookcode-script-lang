exec { $args[0] } @args   # safe even with one-argument list
    || die "can't exec @args: $!";
