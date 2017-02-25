$x = ( ($a, $b) = (7,7,7) );    # set $x to 3, not 2
$x = ( ($a, $b) = funk() );     # set $x to funk()'s return count
$x = ( () = funk() );           # also set $x to funk()'s return count
