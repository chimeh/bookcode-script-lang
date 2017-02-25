use Fcntl qw(:DEFAULT :flock);
use DB_File;  # demo purposes only; any db is fine

$DBNAME  = "/path/to/database";
$LCK     = $DBNAME . ".lockfile";

# use O_RDWR if you expect to put data in the lockfile
sysopen(DBLOCK, $LCK, O_RDONLY | O_CREAT)
    || die "can't open $LCK: $!";

# must get lock before opening database
flock(DBLOCK, LOCK_SH)
    || die "can't LOCK_SH $LCK: $!";

tie(%hash, "DB_File", $DBNAME, O_RDWR | O_CREAT)
    || die "can't tie $DBNAME: $!";
