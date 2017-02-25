Guessing start of match in sv for REx "^Sm(.*)[aeiou]l$" against "Smeagol"
Guessed: match at offset 0
Matching REx "^Sm(.*)[aeiou]l$" against "Smeagol"
   0 <> <Smeagol>            |  1:BOL(2)
   0 <> <Smeagol>            |  2:EXACT <Sm>(4)
   2 <Sm> <eagol>            |  4:OPEN1(6)
   2 <Sm> <eagol>            |  6:STAR(8)
                                  REG_ANY can match 5 times 
                                  out of 2147483647...
   7 <Smeagol> <>            |  8:  CLOSE1(10)
   7 <Smeagol> <>            | 10:  ANYOF[aeiou][](21)
                                    failed...
   6 <Smeago> <l>            |  8:  CLOSE1(10)
   6 <Smeago> <l>            | 10:  ANYOF[aeiou][](21)
                                    failed...
   5 <Smeag> <ol>            |  8:  CLOSE1(10)
   5 <Smeag> <ol>            | 10:  ANYOF[aeiou][](21)
   6 <Smeago> <l>            | 21:  EXACT <l>(23)
   7 <Smeagol> <>            | 23:  EOL(24)
   7 <Smeagol> <>            | 24:  END(0)
Match successful!
Freeing REx: "^Sm(.*)[aeiou]l$"
