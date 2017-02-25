use v5.14;

my $n = somefunc();

given ($n) {
   when (0)       { say "zero"         }
   when (1)       { say "one"          }
   when ([3..7])  { say "many"         }
   when (/^\d+$/) { say "lots"         }
   default        { say "unwholesome"  }
}
