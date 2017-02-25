use Fcntl qw(:DEFAULT :flock);
 sysopen(FH, "filename", O_WRONLY | O_CREAT)
     || die "can't open filename: $!";
 flock(FH, LOCK_EX)
     || die "can't lock filename: $!";
 truncate(FH, 0)
     || die "can't truncate filename: $!";
 # now write to FH
