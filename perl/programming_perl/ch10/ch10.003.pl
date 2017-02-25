$!@#$%           = 0;         # WRONG, syntax error.
${'!@#$%'}       = 1;         # Ok, though unqualified.

${'main::!@#$%'} = 2;         # Can qualify within the string.
print ${ $main::{'!@#$%'} }   # Ok, prints 2!
