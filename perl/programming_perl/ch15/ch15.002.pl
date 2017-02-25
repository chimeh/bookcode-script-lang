sub catch_zap {
    my $signame = shift();
    our $shucks++;
    die "Somebody sent me a SIG$signame!";
}
$shucks = 0;
$SIG{INT}  = "catch_zap";   # always means &main::catch_zap
$SIG{INT}  = \&catch_zap;   # best strategy
$SIG{QUIT} = \&catch_zap;   # catch another, too
