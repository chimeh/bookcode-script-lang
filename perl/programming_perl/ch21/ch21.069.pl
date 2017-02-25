while (<>) {
    $comments++, next if /^#/;
    $blank++, next    if /^\s*$/;
    last              if /^__END__/;
    $code++;
}
print "comment = $comments\nblank = $blank\ncode = $code\n";
