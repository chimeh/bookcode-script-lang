LINE: while (<STDIN>) {
    last LINE if /^$/;      # exit when done with mail header
    ...
}
