@args = ("echo surprise");  # just one element in list
exec @args                  # still subject to shell escapes
     || die "exec: $!";     #   because @args == 1
