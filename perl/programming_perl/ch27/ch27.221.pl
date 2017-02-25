open(INFO,      "datafile")  || die("can't open datafile: $!");
open(INFO,    "< datafile")  || die("can't open datafile: $!");
open(RESULTS, "> runstats")  || die("can't open runstats: $!");
open(LOG,    ">> logfile ")  || die("can't open logfile:  $!");
