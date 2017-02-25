while (<>) {
    study;
    print ".IX foo\n"      if /\bfoo\b/;
    print ".IX bar\n"      if /\bbar\b/;
    print ".IX blurfl\n"   if /\bglarch\b/;
    ...
    print;
}
