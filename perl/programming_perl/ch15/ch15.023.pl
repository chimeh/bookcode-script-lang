use Fcntl qw/F_SETFD/;

fcntl(INPUT, F_SETFD, 0)
    || die "Can't clear close-on-exec flag on INPUT: $!\n";
