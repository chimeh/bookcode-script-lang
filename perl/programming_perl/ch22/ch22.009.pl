open(FILE,      $existing_file)  || die $!;  # wrongish
open(FILE,    "<$existing_file") || die $!;  # righter
open(FILE, "<", $existing_file)  || die $!;  # righterer
