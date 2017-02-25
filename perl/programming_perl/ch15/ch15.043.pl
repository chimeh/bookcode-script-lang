my ($fhread, $fhwrite);
$pid = open2($fhread, $fhwrite, "cat -u -n");
