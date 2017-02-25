$path =~ s#^(\s)#./$1#;
open(FH, "< $path\0") || die "can't open $path: $!";
