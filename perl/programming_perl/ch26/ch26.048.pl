$out = pack "H2 X h2",  "dead", "beef";  # 0xeb
$out = pack "H2 X3 h2", "dead", "beef";  # 0xde000000eb
$out = pack "H2 X* h2", "dead", "beef";  # 0xdeeb
