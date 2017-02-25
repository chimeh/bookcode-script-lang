use Fcntl qw(:DEFAULT :flock);
open(FH, "< filename")  || die "can't open filename: $!";
flock(FH, LOCK_SH)      || die "can't lock filename: $!";
# now read from FH
