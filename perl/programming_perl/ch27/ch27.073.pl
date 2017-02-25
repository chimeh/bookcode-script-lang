die "Can"t cd to spool: $!"   unless chdir "/usr/spool/news";

chdir("/usr/spool/news")        || die "Can't cd to spool: $!"
