open(FROMKID, "-|") || exec("myprog", "arg1", "arg2")
    || die "can't run myprog: $!";
