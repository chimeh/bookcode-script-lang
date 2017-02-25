use Fcntl qw(:DEFAULT :flock);
open(FH, "< filename")  || die "can't open filename: $!";
unless (flock(FH, LOCK_SH | LOCK_NB)) {
    local $| = 1;
    print "Waiting for lock on filename...";
    flock(FH, LOCK_SH)  || die "can't lock filename: $!";
    print "got it.\n"
}
# now read from FH
