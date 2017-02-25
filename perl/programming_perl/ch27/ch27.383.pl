@args = ("command", "arg1", "arg2");
system(@args) == 0
     || die "system @args failed: $?"
