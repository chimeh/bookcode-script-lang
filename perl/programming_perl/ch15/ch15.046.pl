use Fcntl;             # for sysopen
 chdir;                 # go home
 $fpath = ".signature";
 $ENV{PATH} .= ":/usr/games";

 unless (-p $fpath) {   # not a pipe
     if (-e _) {        # but a something else
         die "$0: won't overwrite .signature\n";
     } else {
         require POSIX;
         POSIX::mkfifo($fpath, 0666) || die "can't mknod $fpath: $!";
         warn "$0: created $fpath as a named pipe\n";
     }
 }

 while (1) {
     # exit if signature file manually removed
     die "Pipe file disappeared" unless -p $fpath;
     # next line blocks until there's a reader
     sysopen(FIFO, $fpath, O_WRONLY)
         || die "can't write $fpath: $!";
     print FIFO "John Smith (smith\@host.org)\n", `fortune -s`;
     close FIFO;
     select(undef, undef, undef, 0.2);  # sleep 1/5th of a second
 }
