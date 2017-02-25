LINE: while (<STDIN>) {
    next LINE if /^#/;     # discard comments
    ...
}
