chroot((getpwnam("ftp"))[7])
    || die "can't do anonymous ftp: $!";
