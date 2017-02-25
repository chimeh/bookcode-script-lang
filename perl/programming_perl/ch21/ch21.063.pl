while (<>) {
     next if /^=for\s+(index|later)/;
     $chars += length;
     $words += split;
     $lines += y/\n//;
 }
