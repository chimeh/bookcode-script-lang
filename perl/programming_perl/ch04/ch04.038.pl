for my $pay (@salaries) {                # grant 8% raises
    $pay *= 1.08;
}

for (@christmas, @easter) {              # change menu
    s/ham/turkey/;
}
s/ham/turkey/ for @christmas, @easter;   # same thing

for ($scalar, @array, values %hash) {
    s/^\s+//;                            # strip leading  whitespace
    s/\s+$//;                            # strip trailing whitespace
}
