open(FH,             "| tr   'a-z'  'A-Z'");         # pipe to shell 
                                                     # command
open(FH, "|-",         "tr", "a-z", "A-Z" );         # pipe to bare 
                                                     # command
open(FH, "|-") || exec("tr", "a-z", "A-Z") || die;   # pipe to child
open(FOO, "|-",        "tr", "a-z", "A-Z") || die;   # pipe to child
