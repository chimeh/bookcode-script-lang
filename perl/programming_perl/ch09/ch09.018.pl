for $i ( 0 .. $#AoA ) {
    $row = $AoA[$i];
    for $j ( 0 .. $#{$row} ) {
        say "element $i $j is $row->[$j]";
    }
}
