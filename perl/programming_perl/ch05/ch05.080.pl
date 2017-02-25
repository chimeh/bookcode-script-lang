s/^\s+//gm;             # Trim leading whitespace on each line
$total++ while /^./mg;  # Count nonblank lines
