undef $/;           # enable whole-file mode
$_ = <FH>;          # whole file now here
s/\n[ \t]+/ /g;     # fold indented lines
