open(FH,              "cat    -n   'file' |");      # pipe from shell
                                                    # command
open(FH, "-|",        "cat", "-n", "file");         # pipe from bare 
                                                    # command
open(FH, "-|") || exec("cat", "-n", "file") || die; # pipe from child
open(FOO, "-|", "cat", "-n", $file) || die;         # pipe from child
