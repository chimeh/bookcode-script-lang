$  $arrayref  [2] = "Dorian";         #1
${ $arrayref }[2] = "Dorian";         #2
   $arrayref->[2] = "Dorian";         #3

$  $hashref  {KEY} = "F#major";       #1
${ $hashref }{KEY} = "F#major";       #2
   $hashref->{KEY} = "F#major";       #3

&  $coderef  (Presto => 192);         #1
&{ $coderef }(Presto => 192);         #2
   $coderef->(Presto => 192);         #3
