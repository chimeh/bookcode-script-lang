use Socket qw(:DEFAULT :crlf);
local ($/) = LF;     # not needed if $/ is already \012

while (<SOCKET>) {
    s/$CR?$LF/\n/;   # replace LF or CRLF with logical newline
}
