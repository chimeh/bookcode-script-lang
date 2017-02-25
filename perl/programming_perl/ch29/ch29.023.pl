use charnames ":full";
print "\N{GREEK SMALL LETTER SIGMA} is called sigma.\n";

use charnames ":short";
print "\N{greek:Sigma} is an uppercase sigma.\n";

use charnames qw(cyrillic greek);
print "\N{sigma} is Greek sigma, and \N{be} is Cyrillic b.\n";

use charnames ":full", ":alias" => {
    "WRY CAT" => "CAT FACE WITH WRY SMILE",
    "AMELIA"  => "DROMEDARY CAMEL",
    "s with comma" => 0x0219,
};

# ":loose" supported on v5.16 and later only
use charnames ":loose";
