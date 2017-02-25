local *MOTD;                # protect any global MOTD handle
my $fh = do { local *FH };  # create new indirect filehandle
