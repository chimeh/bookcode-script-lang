sub count (@);       # Compiler now knows how to call count().
my $x;               # Compiler now knows about lexical variable.
$x = count(3,2,1);   # Compiler can validate function call.
sub count (@) { @_ } # Compiler now knows what count() means.
