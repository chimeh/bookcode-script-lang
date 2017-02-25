open(INFO,      "datafile")  or die "can't open datafile: $!";
open(INFO,    "< datafile")  or die "can't open datafile: $!";
open(RESULTS, "> runstats")  or die "can't open runstats: $!";
open(LOG,    ">> logfile ")  or die "can't open logfile:  $!";
