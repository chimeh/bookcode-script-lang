$fd = $ENV{"MHCONTEXTFD"};
open(MHCONTEXT, "<&=$fdnum")
        || die "couldn't fdopen descriptor $fdnum: $!";
