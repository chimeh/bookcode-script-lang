use Data::Dumper;
$Data::Dumper::Purity = 1;       # since %TV is self-referential
open (FILE, "> tvinfo.perldata") || die "can't open tvinfo: $!";
print FILE Data::Dumper->Dump([\%TV], ['*TV']);
close(FILE)                      || die "can't close tvinfo: $!";
