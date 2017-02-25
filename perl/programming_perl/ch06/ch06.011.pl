open(OUTPUT, "> :raw :encoding(UTF-16LE) :crlf", $filename)
              || die "can't open $filename: $!";
print OUTPUT for @stuff;
close(OUTPUT) || die "couldn't close $filename: $!";
