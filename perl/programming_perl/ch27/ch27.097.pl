if (        $ref                 &&
     exists $ref->[$x]           &&
     exists $ref->[$x][$y]       &&
     exists $ref->[$x][$y]{$key} &&
     exists $ref->[$x][$y]{$key}[2] ) { ... }
