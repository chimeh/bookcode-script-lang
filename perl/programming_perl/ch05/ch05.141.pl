while (<CONF>) {
    next if /^#/;
    next if /^\s*(#|$)/;
    chomp;
    munchabunch($_);
}
