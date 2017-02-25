do "tvinfo.perldata"            || die "can't recreate tvinfo: $! $@";
print $TV{simpsons}{members}[2]{age};
