@transformed = map {; ... } @input; # ; disambiguates ellipsis

@transformed = map { ...; } @input; # ; disambiguates ellipsis
