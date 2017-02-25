while (<>) {
    /^#/       and $comments++, next;
    /^\s*$/    and $blank++, next;
    /^__END__/ and last;
    $code++;
}
print "comment = $comments\nblank = $blank\ncode = $code\n";
