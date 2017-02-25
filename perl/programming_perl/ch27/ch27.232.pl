$filename =~ s/(.*\.gz)\s*$/gzip -dc < $1|/;
open(FH, $filename)   || die "Can't open $filename: $!";
