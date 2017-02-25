use Encode;
use Encode::Locale;

# use "locale" as an arg to encode/decode
@ARGV = map { decode(locale =>  $_) } @ARGV;

# or as a stream for binmode or open
binmode $some_fh, ":encoding(locale)";

binmode STDIN,  ":encoding(console_in)"   if -t STDIN;
binmode STDOUT, ":encoding(console_out)"  if -t STDOUT;
binmode STDERR, ":encoding(console_out)"  if -t STDERR;
