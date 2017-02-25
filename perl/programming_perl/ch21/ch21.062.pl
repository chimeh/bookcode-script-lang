%cache = map { $_ => expensive($_) } @common_args;
$xval = $cache{$x} || expensive($x);
