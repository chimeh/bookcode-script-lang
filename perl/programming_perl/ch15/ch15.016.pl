use Fcntl qw(:DEFAULT :flock);

sysopen(FH, "counterfile", O_RDWR | O_CREAT)
    || die "can't open counterfile: $!";
flock(FH, LOCK_EX)
    || die "can't write-lock counterfile: $!";
$counter = <FH> || 0;  # first time would be undef
seek(FH, 0, 0)
    || die "can't rewind counterfile : $!";
print FH $counter+1, "\n"
    || die "can't write counterfile: $!";

# next line technically superfluous in this program, but
# a good idea in the general case
truncate(FH, tell(FH))
    || die "can't truncate counterfile: $!";
close(FH)
    || die "can't close counterfile: $!";
