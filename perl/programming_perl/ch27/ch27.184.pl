use Socket;
listen(PROTOSOCK, SOMAXCONN)
    || die "cannot set listen queue on PROTOSOCK: $!";
