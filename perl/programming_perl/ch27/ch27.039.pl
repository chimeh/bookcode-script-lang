chown($uidnum, $gidnum, "file1", "file2") == 2
        || die "can't chown file1 || file2: $!";
