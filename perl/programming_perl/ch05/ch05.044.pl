s{
    version
    \s+
    (
        [0-9.]+
    )
}{
    $Names{$1}
        ? "the $Names{$1} release"
        : $&
}xge;
