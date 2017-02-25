eval { ... };
die unless $@ =~ /Expected exception/;
