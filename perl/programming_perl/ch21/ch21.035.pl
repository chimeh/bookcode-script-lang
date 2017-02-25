while (<>) {
     next if /^#/;
     next if /^$/;
     chop;
     @piggies = split(/,/);
     ...
 }
