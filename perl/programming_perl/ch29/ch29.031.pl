use v5.14;
use warnings;
use warnings FATAL => "utf8";
use open qw(:std :utf8);

use charnames ":full", ":alias" => {
    ecute         => "LATIN SMALL LETTER E WITH ACUTE",
    "APPLE LOGO"  => 0xF8FF,  # private use character
};

printf "U+%04X is named '%s'.\n",  0xE9  => charnames::viacode(0xE9);
printf "%s is code U+%04X.\n",     ecute => charnames::vianame("ecute");
printf "%s is string '%s'.\n",     ecute => charnames::string_vianame("ecute");

printf "U+%04X is named '%s'.\n",    0xF8FF => charnames::viacode(0xF8FF);
printf "%s is code U+%04X.\n", "APPLE LOGO" => charnames::vianame("APPLE LOGO");
printf "%s is string '%s'.\n", "APPLE LOGO" => charnames::string_vianame("APPLE LOGO");
