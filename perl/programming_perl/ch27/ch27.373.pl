require "syscall.ph";
syscall(&SYS_setgroups, scalar @newgids, pack("i*", @newgids))
        || die "setgroups: $!";
