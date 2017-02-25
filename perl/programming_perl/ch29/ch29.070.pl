$code = '(?{ $n++ })';      # code assertion
$str  = '\b\w+\b' . $code;  # build string to interpolate

$line =~ /$str/;    # this needs use re 'eval'

$pat = qr/$str/;    # this also needs use re 'eval'
$line =~ /$pat/;    # but this doesn't need use re 'eval'
