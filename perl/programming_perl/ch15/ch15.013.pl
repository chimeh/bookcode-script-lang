flock(FH, LOCK_SH | LOCK_NB)
    || die "can't lock filename: $!";
