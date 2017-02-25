$alias = $aliases{"postmaster\0"};
$alias =~ s/\0\z//;   # kill the null
