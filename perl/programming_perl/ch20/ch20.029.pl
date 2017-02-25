use Fcntl qw/O_WRONLY O_CREAT O_EXCL/;
open(FH, "<", $file)
    || sysopen(FH, $file, O_WRONLY | O_CREAT | O_EXCL)
    || die "can't create new file $file: $!";
