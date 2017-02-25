use English;

defined ($pid = open(SAFE_WRITER, "|-"))
    || die "Can't fork: $!";

if ($pid) {
    # you're the parent. write data to SAFE_WRITER child
    print SAFE_WRITER "@output_data\n";
    close SAFE_WRITER
        || die $! ? "Syserr closing SAFE_WRITER writer: $!"
                  : "Wait status $? from SAFE_WRITER writer";
}
else {
    # you're the child, so drop extra privileges
    ($EUID, $EGID) = ($UID, $GID);

    # open the file under original user's rights
    open(FH, "> /some/file/path")
        || die "can't open /some/file/path for writing: $!";

    # copy from parent (now stdin) into the file
    while (<STDIN>) {
        print FH $_;
    }
    close(FH)   || die "close failed: $!";
    exit;       # Don't forget to make the SAFE_WRITER disappear.
}
