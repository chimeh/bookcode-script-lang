$IDX = $ST_MTIME;
$IDX = $ST_ATIME       if $opt_u;
$IDX = $ST_CTIME       if $opt_c;
$IDX = $ST_SIZE        if $opt_s;

mkdir($tmpdir, 0700) || die "can’t mkdir $tmpdir: $!";
chdir($tmpdir)       || die "can’t chdir $tmpdir: $!";
mkdir("tmp",   0777) || die "can’t mkdir $tmpdir/tmp: $!";
