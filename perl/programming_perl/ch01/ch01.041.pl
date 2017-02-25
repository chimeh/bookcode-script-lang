open(my $handle, "< :crlf :encoding(cp1252)", $somefile)
  || die "can't open $somefile: $!";
