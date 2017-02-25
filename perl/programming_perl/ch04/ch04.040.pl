for ($i = 0; $i < @ary1; $i++) {
    for ($j = 0; $j < @ary2; $j++) {
        if ($ary1[$i] > $ary2[$j]) {
            last;         # Can't go to outer loop. :-(
        }
        $ary1[$i] += $ary2[$j];
    }
    # this is where that last takes me
}
