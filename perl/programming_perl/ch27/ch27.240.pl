use Fcntl;
sysopen(FH, $path, O_RDONLY) || die "can't open $path: $!";
