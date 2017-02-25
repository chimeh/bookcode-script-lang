$rin = $win = $ein = "";
vec($rin, fileno(STDIN), 1)  = 1;
vec($win, fileno(STDOUT), 1) = 1;
$ein = $rin | $win;
