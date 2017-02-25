if (-e $file) {
    open(FH, "<", $file)
        || die "can't open $file for reading: $!";
}
else {
    open(FH, ">", $file)
        || die "can't open $file for writing: $!";
}
