$_ = "lothlorien";
m/  (?{ $i = 0 })                    # Set $i to 0
    (.    (?{ $i++ })    )*          # Update $i, even after backtracking
    lori                             # Forces a backtrack
 /x;
