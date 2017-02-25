#!/usr/bin/perl
use Shout;
tie(*FOO, Shout::, ">filename");
print FOO "hello\n";            # Prints HELLO.
seek FOO, 0, 0;                 # Rewind to beginning.
@lines = <FOO>;                 # Calls the READLINE method.
close FOO;                      # Close file explicitly.
open(FOO, "+<", "filename");    # Reopen FOO, calling OPEN.
seek(FOO, 8, 0);                # Skip the "<SHOUT>\n".
sysread(FOO, $inbuf, 5);        # Read 5 bytes from FOO into $inbuf.
print "found $inbuf\n";         # Should print "hello".
seek(FOO, -5, 1);               # Back up over the "hello".
syswrite(FOO, "ciao!\n", 6);    # Write 6 bytes into FOO.
untie(*FOO);                    # Calls the CLOSE method implicitly.
