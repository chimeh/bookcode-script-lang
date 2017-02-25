use charnames ":alias" => {
    e_ACUTE      => "LATIN SMALL LETTER E WITH ACUTE",
    "APPLE LOGO" => 0xF8FF,  # private-use codepoint
};
my $str = "\N{APPLE LOGO}";
