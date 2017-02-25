# Or else let the module do that for us.
use IO::File;
my $fh = IO::File::new_tmpfile();  # this is POSIX's tmpfile(3)
# Now do I/O using $fh handle.
