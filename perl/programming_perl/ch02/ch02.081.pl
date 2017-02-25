while (<FH1> && <FH2>) { ... }         # WRONG: discards both inputs
if (<STDIN>)      { print }            # WRONG: prints old value of $_
if ($_ = <STDIN>) { print }            # suboptimal: doesn't test defined
if (defined($_ = <STDIN>)) { print }   # best
