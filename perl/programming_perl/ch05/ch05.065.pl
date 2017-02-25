use charnames qw[ :full ];
$BWV[887] = "G\N{MUSIC SHARP SIGN} minor";
my ($note, $black, $mode) = $BWV[887] =~ /^([A-G])(.)\s+(\S+)/;
say "That's lookin' sharp!" if $black eq chr 0x266f;  # ♯
