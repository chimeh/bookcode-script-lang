open(PRINTER, "| lpr -Plp1")    || die "can't fork: $!";
say PRINTER "stuff";
close(PRINTER)                  || die "lpr/close failed: $?/$!";
