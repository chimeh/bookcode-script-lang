open(INPUT, "< /etc/motd")      || die "/etc/motd: $!";
 if ($pid = fork) { wait }
 else {
     defined($pid)               || die "fork: $!";
     open(STDIN, "<&INPUT")      || die "dup: $!";
     exec("cat", "-n")           || die "exec cat: $!";
 }
