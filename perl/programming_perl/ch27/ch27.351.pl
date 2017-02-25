$header =~ s/\n\s+/ /g;      # Merge continuation lines.
%head = ("FRONTSTUFF", split /^(\S*?):\s*/m, $header);
