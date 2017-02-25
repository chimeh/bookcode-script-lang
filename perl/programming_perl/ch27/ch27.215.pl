open LOG, ">", "logfile" || die "Can't create logfile: $!";  # WRONG
open LOG, ">", "logfile" or die "Can't create logfile: $!";  # ok
