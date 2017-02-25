use Fcntl qw(F_GETFD F_SETFD);
$flags = fcntl(FH, F_SETFD, 0)
        || die "Can't clear close-on-exec flag on FH: $!";
