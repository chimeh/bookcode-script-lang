open(OUTPUT, "| sort -rn | lpr -p") # pipe to sort and lpr
    || die "Can't start sortlpr pipe: $!";
print OUTPUT @lines;                # print stuff to output
close(OUTPUT)                       # wait for sort to finish
    || warn $! ? "Syserr closing sortlpr pipe: $!"
               : "Wait status $? from sortlpr pipe";
