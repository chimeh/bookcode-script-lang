$x{ \$a } = $a;
($key, $value) = each %x;
print $$key;                # WRONG
