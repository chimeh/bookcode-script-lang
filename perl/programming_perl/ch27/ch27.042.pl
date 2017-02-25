use POSIX qw(sysconf _PC_CHOWN_RESTRICTED);
# only try if we're the superuser or on a permissive system
if ($> == 0 || !sysconf(_PC_CHOWN_RESTRICTED) ) {
    chown($uidnum, -1, $filename)
        || die "can't chown $filename to $uidnum: $!";
}
