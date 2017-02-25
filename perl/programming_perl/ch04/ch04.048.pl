ARG: while (@ARGV && $ARGV[0] =~ s/^-(?=.)//) {
    OPT: for (shift @ARGV) {
         m/^$/       && do {                             next ARG };
         m/^-$/      && do {                             last ARG };
         s/^d//      && do { $Debug_Level++;             redo OPT };
         s/^l//      && do { $Generate_Listing++;        redo OPT };
         s/^i(.*)//  && do { $In_Place = $1 || ".bak";   next ARG };
         say_usage("Unknown option: $_");
    }
}
