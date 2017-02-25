use Errno qw/EINTR/;
$blksize = (stat FROM)[11] || 16384;  # preferred block size?
while ($len = sysread FROM, $buf, $blksize) {
    if (!defined $len) {
        next if $! == EINTR;
        die "System read error: $!";
    }
    $offset = 0;
    while ($len) {          # Handle partial writes
        $written = syswrite TO, $buf, $len, $offset;
        die "System write error: $!" unless defined $written;
        $offset += $written;
        $len    -= $written;
    }
}
