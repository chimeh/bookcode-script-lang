open(LOG, "> logfile")    or die "Can't create logfile: $!"; # ok
open(LOG, ">", "logfile") or die "Can't create logfile: $!"; # better
