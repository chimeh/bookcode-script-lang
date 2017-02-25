$start = time();
system("some slow command");
$end   = time();
if ($end - $start > 1) {
    say "Program started: ", scalar localtime($start);
    say "Program ended:   ", scalar localtime($end);
}
