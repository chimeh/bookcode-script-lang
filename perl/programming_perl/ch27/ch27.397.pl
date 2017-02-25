$string =~ s/ ( (?= \p{CWT} ) \X ) /\u$1/gx;
