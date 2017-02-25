$SIG{QUIT} = "Pkg::quit_catcher"; # fully qualified handler name
$SIG{QUIT} = "quit_catcher";      # implies "main::quit_catcher"
$SIG{QUIT} = *quit_catcher;       # forces current package's sub
$SIG{QUIT} = \&quit_catcher;      # forces current package's sub
$SIG{QUIT} = sub { print "Caught SIGQUIT\n" };   # anonymous sub
