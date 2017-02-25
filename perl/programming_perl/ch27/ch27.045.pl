open(NETSTAT, "netstat -rn |")
    || die "can't run netstat: $!";
open(STDIN, "<&NETSTAT")
    || die "can't dup to stdin: $!";
