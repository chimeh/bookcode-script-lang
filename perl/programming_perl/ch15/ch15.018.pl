untie %hash;    # must close database before lockfile
close DBLOCK;   # safe to let go of lock now
