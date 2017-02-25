exec "sort $outfile | uniq"
    || die "Can't do sort/uniq: $!";
