for $i ( 0 .. $#AoA ) {
    for $j ( 0 .. $#{$AoA[$i]} ) {
        say "element $i $j is $AoA[$i][$j]";
    }
}
