{
    local $^F = 10_000;
    pipe(HITHER,THITHER) || die "can't pipe: $!";
}
