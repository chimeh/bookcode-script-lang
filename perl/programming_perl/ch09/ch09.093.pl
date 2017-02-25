open (FILE, "< tvinfo.perldata") || die "can't open tvinfo: $!";
undef $/;                        # read in file all at once
eval <FILE>;                     # recreate %TV
die "can't recreate tv data from tvinfo.perldata: $@" if $@;
close(FILE)                      || die "can't close tvinfo: $!";
print $TV{simpsons}{members}[2]{age};
