use Fcntl ":flock";
eval {
    local $SIG{ALRM} = sub { die "alarm clock restart" };
    alarm 10;               # schedule alarm in 10 seconds
    eval {
        flock(FH, LOCK_EX)  # a blocking, exclusive lock
            || die "can't flock: $!";
    };
    alarm 0;                # cancel the alarm
};
alarm 0;               # race condition protection
die if $@ && $@ !~ /alarm clock restart/; # reraise
