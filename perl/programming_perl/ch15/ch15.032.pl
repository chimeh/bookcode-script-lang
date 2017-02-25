if (-t STDOUT) {             # only if stdout is a terminal
    my $pager = $ENV{PAGER} || "more";
    open(STDOUT, "| $pager")    || die "can't fork a pager: $!";
}
END {
    close(STDOUT)               || die "can't close STDOUT: $!"
}
