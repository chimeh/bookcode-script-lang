func @foo;                  # counts @foo elements
func split /:/;             # counts number of fields returned
func "a", "b", "c";         # passes "a" only, discards "b" and "c"
func("a", "b", "c");        # suddenly, a compiler error!
