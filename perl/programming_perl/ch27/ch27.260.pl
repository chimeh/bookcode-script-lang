$_ = "stuff\n";
*NEWOUT = *STDOUT;
print NEWOUT;   # ok: prints "stuff\n"

$fh = *NEWOUT;
print $fh;      # WRONG: prints STDOUT "*main::STDOUT"
