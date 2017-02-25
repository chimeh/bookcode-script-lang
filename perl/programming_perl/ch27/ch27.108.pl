use Fcntl qw/:flock/;       # import LOCK_* constants
sub mylock {
    flock(MBOX, LOCK_EX)
        || die "can't lock mailbox: $!";
    # in case someone appended while we were waiting
    # and our stdio buffer is out of sync
    seek(MBOX, 0, 2)
        || die "can't seek to the end of mailbox: $!";
}

open(MBOX, ">> /usr/spool/mail/$ENV{USER}")
    || die "can't open mailbox: $!";

mylock();
say MBOX $msg, "\n";
close MBOX
    || die "can't close mailbox: $!";
