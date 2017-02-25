print $a - 2;   # prints $a - 2 to default filehandle (usually STDOUT)
print $a (- 2); # prints -2 to filehandle specified in $a
print $a -2;    # also prints -2 (weird parsing rules :-)
