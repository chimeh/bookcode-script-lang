use Fcntl qw(F_GETFL F_SETFL O_NONBLOCK);

$flags = fcntl(REMOTE, F_GETFL, 0)
            || die "Can't get flags for the socket: $!";

$flags = fcntl(REMOTE, F_SETFL, $flags | O_NONBLOCK)
            || die "Can't set flags for the socket: $!";
