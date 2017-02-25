open(SESAME,    "filename")            # read from existing file
open(SESAME, "<  filename")            #   (same thing, explicitly)
open(SESAME, ">  filename")            # create file and write to it
open(SESAME, ">> filename")            # append to existing file
open(SESAME, "| output-pipe-command")  # set up an output filter
open(SESAME, "input-pipe-command |")   # set up an input filter
