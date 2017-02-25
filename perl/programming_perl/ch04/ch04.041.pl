WID: for my $this (@ary1) {
    JET: for my $that (@ary2) {
        next WID if $this > $that;
        $this += $that;
    }
}
