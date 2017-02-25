$out = pack 'A(A@4A)A', 'A', 'B', 'C', 'D';  # "AB\000\000\000CD
$out = pack 'A(A@*A)A', 'A', 'B', 'C', 'D';  # "ACD
