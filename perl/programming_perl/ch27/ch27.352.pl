open(PASSWD, "/etc/passwd");
while (<PASSWD>) {
    chomp;        # remove trailing newline
    ($login, $passwd, $uid, $gid, $gcos, $home, $shell) =
            split /:/;
    ...
}
