open(LOG, ">", "logfile") or die "Can't create logfile: $!";  # good
open(LOG, ">", "logfile") || die "Can't create logfile: $!";  # good
