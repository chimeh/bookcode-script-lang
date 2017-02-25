sub sum {
     my $arrayref = shift;
     warn "Not an array reference" if ref($arrayref) ne "ARRAY";
     return eval join("+", @$arrayref);
 }

 say sum([1..100]);  #  5050, by Euler's trick
