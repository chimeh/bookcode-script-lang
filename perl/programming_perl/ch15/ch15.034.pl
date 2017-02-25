open STATUS, "-|", "netstat", "-an"      # requires 5.6.1
    || die "can't run netstat: $!";
