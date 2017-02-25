fcntl(INPUT, F_SETFD, 1)
    || die "Can't set close-on-exec flag on INPUT: $!\n";
