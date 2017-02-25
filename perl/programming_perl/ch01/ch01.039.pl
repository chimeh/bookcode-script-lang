open(SESAME, "<",  $somefile)          # read from existing file
open(SESAME, ">",  $somefile)          # create file and write to it
open(SESAME, ">>", $somefile)          # append to existing file
open(SESAME, "|-", "output-pipe-command")  # set up an output filter
open(SESAME, "-|", "input-pipe-command")   # set up an input filter
