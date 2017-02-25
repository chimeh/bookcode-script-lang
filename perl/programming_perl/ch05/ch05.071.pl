chr(0x110000) =~ /\p{ahex=true}/     # false
chr(0x110000) =~ /\p{ahex=false}/    # false!

chr(0x110000) =~ /\P{ahex=true}/     # true
chr(0x110000) =~ /\P{ahex=false}/    # true!
