require "sys/ioctl.ph";

# pre-allocate the right size buffer:
$size = pack("L", 0);
ioctl(FH, FIONREAD(), $size)
    || die "Couldn't call ioctl: $!";
$size = unpack("L", $size);
