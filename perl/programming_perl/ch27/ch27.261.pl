binmode(STDOUT, ":utf8") || die "Can't binmode: $!";

open(HANDLE, "> :encoding(UTF-16)", $file)
    || die "Can't open $file: $!";
