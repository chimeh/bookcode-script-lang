sub finetime() {
    package main;   # for next require
    require "syscall.ph";
    # presize buffer to two 32-bit longs...
    my $tv = pack("LL", ());
    syscall(&SYS_gettimeofday, $tv, undef) >= 0
        || die "gettimeofday: $!";
    my($seconds, $microseconds) = unpack("LL", $tv);
    return $seconds + ($microseconds / 1_000_000);
}
