$SIG{INT}  = sub { die "\nOutta here!\n" };
$SIG{ALRM} = sub { die "Your alarm clock went off" };
