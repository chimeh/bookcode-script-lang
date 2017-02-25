sigprocmask(SIG_SETMASK, $sigset)
    || die "Could not restore INT,QUIT,CHLD signals: $!\n";
