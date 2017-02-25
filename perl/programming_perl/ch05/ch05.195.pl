/(.*?) (?{length($1) < 3 && warn}) $suffix/;  # Error without 
                                              # use re "eval"
