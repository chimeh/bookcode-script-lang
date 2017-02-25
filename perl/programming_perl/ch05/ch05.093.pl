while (<>) {
    /^(.*?): (.*)$/;    # Pre-colon text into $1, post-colon into $2
    $fields{$1} = $2;
}
