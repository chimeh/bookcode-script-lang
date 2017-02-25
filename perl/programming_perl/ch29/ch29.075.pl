use sigtrap;
use sigtrap qw(stack-trace old-interface-signals);  # same thing

use sigtrap qw(BUS SEGV PIPE ABRT);
use sigtrap qw(die INT QUIT);
use sigtrap qw(die normal-signals);
use sigtrap qw(die untrapped normal-signals);
use sigtrap qw(die untrapped normal-signals
                stack-trace any error-signals);

use sigtrap "handler" => \&my_handler, "normal-signals";
use sigtrap qw(handler my_handler normal-signals stack-trace error-signals);
