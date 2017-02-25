tie my $row_class, "Tie::Cycle", [ qw(odd even) ];

for my $item (@items) {
    print qq(<tr class="$row_class">...</tr>);
}
