opendir(THISDIR, ".") || die "serious dainbramage: $!";
@allfiles = readdir THISDIR;
closedir THISDIR;
say "@allfiles";
