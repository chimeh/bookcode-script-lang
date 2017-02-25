use charnames qw(:full);

$alpha      =     "\N{GREEK CAPITAL LETTER ALPHA}";
$alpha_code = ord "\N{GREEK CAPITAL LETTER ALPHA}";
if ($string =~ /\N{GREEK CAPITAL LETTER ALPHA}/) { ... }
