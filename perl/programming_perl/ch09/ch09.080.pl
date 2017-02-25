print $rec->{SEQUENCE}[0];
$last = pop @{ $rec->{SEQUENCE} };

print $rec->{LOOKUP}{"key"};
($first_k, $first_v) = each %{ $rec->{LOOKUP} };
