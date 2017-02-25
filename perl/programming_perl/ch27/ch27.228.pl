open(PRINTER, "|-", "lpr", "-Plp1")    || die "can't fork: $!";
open(NET, "-|", "netstat", "-i", "-n") || die "can't fork: $!";
