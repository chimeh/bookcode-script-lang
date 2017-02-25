while (<>) {
    chomp;
    next unless -f $_;      # ignore "special" files
    ...
}
