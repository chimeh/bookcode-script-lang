# Magic open—could be anything
open(FH, $file)             || die "can't magic open $file: $!";

# Guaranteed to be a read-only file open and not a pipe
# or fork, but still groks file descriptors and "-",
# and ignores whitespace at either end of name.
open(FH, "< $file")         || die "can't open $file: $!";

# WYSIWYG open: disables all convenience features.
open(FH, "<", $file)        || die "can't open $file: $!";

# Same properties as WYSIWYG 3-arg version.
require Fcntl;
sysopen(FH, $file, O_RDONLY)        || die "can't sysopen $file: $!";
