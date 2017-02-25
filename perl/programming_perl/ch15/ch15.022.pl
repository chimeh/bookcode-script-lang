if ($pid = fork) { wait }
else {
    defined($pid)                || die "fork: $!";
    $fdfile = "/dev/fd/" . fileno(INPUT);
    exec("cat", "-n", $fdfile)   || die "exec cat: $!";
}
