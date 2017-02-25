say SERVER "my request";            # send some data
shutdown(SERVER, 1);                # send eof; no more writing
$answer = <SERVER>;                 # but you can still read
