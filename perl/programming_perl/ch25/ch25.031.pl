$_ = "abcdefghi";
/(.*?)(def)(.*)/s;          # /s in case $1 contains newlines
print "$1:$2:$3\n";         # prints abc:def:ghi
