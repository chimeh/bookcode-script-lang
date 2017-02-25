open(INPUT, "< /etc/motd")      || die "/etc/motd: $!";
 if ($pid = fork) { waitpid($pid,0) }
 else {
     defined($pid)         || die "fork: $!";
     while (<INPUT>) { print "$.: $_" }
     exit;  # don't let child fall back into main code
 }
 # INPUT handle now at EOF in parent
