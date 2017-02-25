open FILE, '<', $file
     or warn "Can't open $file: $!\n", next FILE;   # WRONG
