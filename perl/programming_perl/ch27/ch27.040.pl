chown($uidnum, $gidnum, @filenames) == @filenames
        || die "can't chown @filenames: $!";
