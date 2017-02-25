# truncate from the beginning of the string
$out = pack 'A(A.*A)A', 'A', 'B', 1, 'C', 'D';  # 'ACD'

# pad from the beginning of the string
$out = pack 'A(A.*A)A', 'A', 'B', 5, 'C', 'D';  # "AB\000\000\000CD"

# truncate from the beginning of the string
$out = pack 'A(A.1A)A', 'A', 'B', 1, 'C', 'D';  # "ABCD"

# pad from the beginning of the string
$out = pack 'A(A.1A)A', 'A', 'B', 3, 'C', 'D';  # "AB\000\000\000\000CD"

# pad from the current position
$out = pack 'A(A.0A)A', 'A', 'B', 0, 'C', 'D';  # "ABCD"
$out = pack 'A(A.0A)A', 'A', 'B', 2, 'C', 'D';  # "AB\000\000CD"
