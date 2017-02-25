use Socket qw(:all);

# assume that $socket hold the handle of a connected socket
$tcp = IPPROTO_TCP;
$packed = getsockopt($socket, $tcp, TCP_NODELAY)
    || die "getsockopt: $!";
$nodelay = unpack("I", $packed);
printf "Nagle's algorithm is o%s.\n", $nodelay ? "ff" : "n";
