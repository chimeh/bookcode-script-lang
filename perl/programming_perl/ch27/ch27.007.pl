print "Answer me within one minute, or die: ";
alarm(60);             # kill program in one minute
$answer = <STDIN>;
$timeleft = alarm(0);  # clear alarm
say "You had $timeleft seconds remaining";
