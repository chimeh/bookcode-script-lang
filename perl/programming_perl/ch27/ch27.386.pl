use NDBM_File;
tie(%ALIASES, "NDBM_File", "/etc/aliases", 1, 0)
    || die "Can't open aliases: $!";
while (($key,$val) = each %ALIASES) {
    say "$key = $val";
}
untie %ALIASES;
