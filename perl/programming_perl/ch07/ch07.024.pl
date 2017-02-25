$total = sum ( \@a );

sub sum {
    my ($aref)  = @_;
    my ($total) = 0;
    for (@$aref) { $total += $_ }
    return $total;
}
