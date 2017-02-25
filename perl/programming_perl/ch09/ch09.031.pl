for $i (1..10) {
    @array = somefunc($i);
    $AoA[$i] = @array;       # WRONG!
}
