$out = pack 'A*', 'Amelia';              # Amelia
$out = pack 'A*@3', 'Amelia';            # Ame
$out = pack 'A*@3A*', 'Amelia', 'Camel'; # AmeCamel

$out = pack 'c@5', 137;                  # 0x8900000000
