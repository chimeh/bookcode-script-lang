# open file and mark INPUT to be left open across execs
{
    local $^F = 10_000;
    open(INPUT, "< /etc/motd")   || die "/etc/motd: $!";
} # old value of $^F restored on scope exit
