use POSIX qw(:signal_h);
$sigset   = POSIX::SigSet->new;
$blockset = POSIX::SigSet->new(SIGINT, SIGQUIT, SIGCHLD);
sigprocmask(SIG_BLOCK, $blockset, $sigset)
    || die "Could not block INT,QUIT,CHLD signals: $!\n";
