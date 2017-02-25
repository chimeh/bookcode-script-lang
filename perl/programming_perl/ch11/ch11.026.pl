*CORE::GLOBAL::glob = sub {
     my $pat = shift;
     my @got;
     local *D;
     if (opendir D, ".") {
         @got = grep /$pat/, readdir D;
         closedir D;
     }
     return @got;
 }

 package Whatever;

 print <^[a-z_]+\.pm\$>;       # show all pragmas in the current directory
