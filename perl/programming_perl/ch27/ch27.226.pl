open(NET, "netstat -i -n |")    || die "can't fork: $!";
while (<NET>) { ... }
close(NET)                      || die "can't close netstat: $!/$?";
