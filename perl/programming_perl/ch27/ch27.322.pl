shutdown(SOCK, 0);    # no more reading
shutdown(SOCK, 1);    # no more writing
shutdown(SOCK, 2);    # no more I/O at all
