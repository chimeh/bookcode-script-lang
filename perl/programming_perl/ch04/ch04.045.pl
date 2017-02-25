LINE: while (<STDIN>) {
    next LINE if /^#/;      # skip comments
    next LINE if /^$/;      # skip blank lines
    ...
} continue {
    $count++;
}
