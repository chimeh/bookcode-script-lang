use IO::Handle;

IO::Handle::untaint(*SOME_FH);          # Either procedurally
SOME_FH->untaint();                     # or using the OO style.
