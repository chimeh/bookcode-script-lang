binmode(STDOUT, ":raw")
  || die "couldn't binmode STDOUT to raw: $!";
open(GIF, "< :raw", "vim-power.gif")
  || die "Can't open vim-power.gif: $!";
while (read(GIF, $buf, 1024)) {  # now bytes, not chars
    print STDOUT $buf;
}
