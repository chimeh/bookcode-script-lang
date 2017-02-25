close(STDOUT)   || die "can't close STDOUT: $!";
open(STDOUT, ">", \$variable)   || die "can't memopen STDOUT: $!";
