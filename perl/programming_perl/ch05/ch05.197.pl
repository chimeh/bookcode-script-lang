"abcdef" =~ / .+ (?{say "Matched so far: $&"}) .cdef $/x;
