if (101 .. 200) { print }   # print 2nd hundred lines
next line if 1 .. /^$/;     # skip header lines of a message
s/^/> / if /^$/ .. eof;     # quote body of a message
