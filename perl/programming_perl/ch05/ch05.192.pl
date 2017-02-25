$_ = "lothlorien";
m/  (?{ $i = 0 })
    (. (?{ local $i = $i + 1; }) )*  # Update $i, backtracking-safe.
    lori
    (?{ $result = $i })              # Copy to non-local()ized location.
 /x;
