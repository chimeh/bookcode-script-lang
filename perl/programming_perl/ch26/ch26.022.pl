use POSIX;
use locale;

POSIX::setlocale(LC_NUMERIC, "fr_FR");
printf "<%f>", 3.1415926; # "<3,141593>"
