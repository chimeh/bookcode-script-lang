$funcall = qr/\w+ (?<paren> \( (?: [^()]++ | (?&paren) )*+ \) )/x
while (<>) {
    say $+{func} if /^ \s* (?<func> $funcall ) \s* ; \s* $/x;
}
