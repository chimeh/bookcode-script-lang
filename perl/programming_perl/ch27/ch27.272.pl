opendir(THATDIR, $path) || die "can't opendir $path: $!";
@dotfiles = grep { /^\./ && -f } map { "$path/$_" } readdir(THATDIR);
closedir THATDIR;
