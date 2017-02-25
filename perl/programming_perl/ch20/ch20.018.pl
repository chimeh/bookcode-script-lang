use English;   # to use $UID, etc
die "Can't fork open: $!"   unless defined($pid = open(FROMKID, "-|"));
if ($pid) {           # parent
    while (<FROMKID>) {
        # do something
    }
    close FROMKID;
}
else {
    $EUID = $UID;  # setuid(getuid())
    $EGID = $GID;  # setgid(getgid()), and initgroups(2) on getgroups(2)
    chdir("/")      || die "can't chdir to /: $!";
    umask(077);
    $ENV{PATH} = "/bin:/usr/bin";
    exec "myprog", "arg1", "arg2";
    die "can't exec myprog: $!";
}
