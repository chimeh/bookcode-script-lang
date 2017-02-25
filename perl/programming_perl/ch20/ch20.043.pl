$sandbox->reval(q{
    our $master;
    sub say_master {
        print "master is now $main::master\n";
    }
}, 1);
die if $@;      # check compilation
