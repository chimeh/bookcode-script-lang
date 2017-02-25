use IO::Handle;
if (IO::Handle->isa("Exporter")) {
    print "IO::Handle is an Exporter.\n";
}

$fh = IO::Handle->new();
if ($fh->isa("IO::Handle")) {
    print "\$fh is some sort of IOish object.\n";
}
if ($fh->isa("GLOB")) {
    print "\$fh is really a GLOB reference.\n";
}
