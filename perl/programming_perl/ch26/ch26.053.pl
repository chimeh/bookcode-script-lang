unpack "C/a", "\04Gurusamy";        # gives "Guru"
unpack "a3/A* A*", "007 Bond  J ";  # gives (" Bond","J")
pack "n/a* w/a*","hello,","world";  # gives "\000\006hello,\005world"
