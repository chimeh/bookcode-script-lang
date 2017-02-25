while ( <> ) {
     next unless s/^(.*?):\s*//;
     $HoA{$1} = [ split ];
 }

 while ( $line = <> ) {
     ($who, $rest) = split /:\s*/, $line, 2;
     @fields = split " ", $rest;
     $HoA{$who} = [ @fields ];
 }
