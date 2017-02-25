while (<>) {
    use re "/a";
    if (/\d/) {    # only 0 .. 9
        print "Found an ASCII digit: $_";
    }
}
