$regex = qr/$pattern/;
$string =~ /foo${regex}bar/;   # interpolate into larger patterns
