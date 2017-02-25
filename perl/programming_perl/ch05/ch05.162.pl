Compiling REx "^Sm(.*)[aeiou]l$"
Final program:
   1: BOL (2)
   2: EXACT <Sm> (4)
   4: OPEN1 (6)
   6:   STAR (8)
   7:     REG_ANY (0)
   8: CLOSE1 (10)
  10: ANYOF[aeiou][] (21)
  21: EXACT <l> (23)
  23: EOL (24)
  24: END (0)
anchored "Sm" at 0 floating "l"$ at 3..2147483647 (checking anchored) 
anchored(BOL) minlen 4
