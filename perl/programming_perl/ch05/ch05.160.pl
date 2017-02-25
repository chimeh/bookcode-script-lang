$re = qr/$pat/is;                      # might escape and eat you
$re = eval { qr/$pat/is } || warn ...  # caught it in an outer cage
