open SPOOLER, "| cat -v | lpr -h 2>/dev/null"
     || die "can't fork: $!";
 local $SIG{PIPE} = sub { die "spooler pipe broke" };
 print SPOOLER "stuff\n";
 close SPOOLER || die "bad spool: $! $?";
