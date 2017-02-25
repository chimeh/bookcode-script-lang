$_ = "Preheat oven to 233C.\n";
s/\b(\d+\.?\d*)C\b/int($1 * 1.8 + 32) . "F"/e;   # convert to 451F
