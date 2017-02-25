while (defined($_ = shift)) {
    /^[^-]/     && do { unshift @ARGV, $_; last };
    /^-w/       && do { $WARN = 1;         next };
    /^-r/       && do { $RECURSE = 1;      next };
    die "Unknown argument $_";
}
