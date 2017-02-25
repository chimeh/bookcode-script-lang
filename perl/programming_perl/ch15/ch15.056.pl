# no more writing to server
shutdown($socket, 1);    # Socket::SHUT_WR constant in v5.6
