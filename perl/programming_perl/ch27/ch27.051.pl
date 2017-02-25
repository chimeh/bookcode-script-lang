use DB_File;
dbmopen(%NS_Hist, "$ENV{HOME}/.netscape/history.dat", undef)
    || die "Can't open netscape history file: $!";

while (($url, $when) = each %NS_Hist) {
    next unless defined($when);
    chop ($url, $when);        # kill trailing null bytes
    printf "Visited %s at %s.\n", $url,
        scalar(localtime(unpack("V",$when)));
}
