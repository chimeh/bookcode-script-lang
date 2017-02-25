%HoF = (                           # Compose a hash of functions
    exit    =>  sub { exit },
    help    =>  \&show_help,
    watch   =>  sub { $watch = 1 },
    mail    =>  sub { mail_msg($msg) },
    edit    =>  sub { $edited++; editmsg($msg); },
    delete  =>  \&confirm_kill,
);

if   ($HoF{lc $cmd}) { $HoF{lc $cmd}->() }   # Call function
else { warn "Unknown command: '$cmd'; Try 'help' next time\n" }
