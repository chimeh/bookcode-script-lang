$out = pack "H2 x h2", "dead", "beef";   # 0xde00eb
$out = pack "H2 x3 h2", "dead", "beef";  # 0xde000000eb
$out = pack "H2 x* h2", "dead", "beef";  # 0xdeeb
