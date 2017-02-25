open(DICT, "/usr/dict/words")   or die "Can't open words: $!\n";
while (<DICT>) {
    $first = $1 if m? (^ neur .* ) ?x;
    $last  = $1 if m/ (^ neur .* ) /x;
}
say $first;          # prints "neurad"
say $last;           # prints "neurypnology"
