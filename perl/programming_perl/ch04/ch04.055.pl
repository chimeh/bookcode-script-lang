DO_LAST: {
            do {
DO_NEXT:          {
                    next DO_NEXT if $x == $y;
                    last DO_LAST if $x =  $y ** 2;
                    # do something here
                  }
            } while $x++ <= $z;
         }
