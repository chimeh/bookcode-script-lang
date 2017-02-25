$cnt = kill 1, $child1, $child2;
kill 9, @goners;
kill "STOP", getppid       # Can *so* suspend my login shell...
        unless getppid == 1;    # (But don't taunt init(8).)
