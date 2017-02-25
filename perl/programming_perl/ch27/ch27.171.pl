require "sys/ioctl.ph";

# four unsigned shorts of the native size
$template = "S!4";
# pre-allocate the right size buffer:
my $ws = pack($template, ());
ioctl(STDOUT, TIOCGWINSZ(), $ws)
    || die "Couldn't call ioctl: $!";
($rows, $cols, $xpix, $ypix) = unpack($template, $ws);
