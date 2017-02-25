use File::stat;
use Symbol "qualify_to_ref";
sub handle_looks_safe(*) {
    my $fh = qualify_to_ref(shift, caller);
    my $info = stat($fh);
    return unless $info;

    # owner neither superuser nor "me", whose
    # real uid is in the $< variable
    if ($info->uid != 0 && $info->uid != $<) {
        return 0;
    }

    # check whether group or other can write file.
    # use 066 to detect for readability also
    if ($info->mode & 022) {
        return 0;
    }
    return 1;
}

use IO::Handle;
SOME_FH->untaint() if handle_looks_safe(*SOME_FH);
