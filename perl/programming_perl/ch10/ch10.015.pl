sub identify_typeglob {
    my $glob = shift;
    print "You gave me ", *{$glob}{PACKAGE}, "::", *{$glob}{NAME}, "\n";
}

identify_typeglob(*foo);
identify_typeglob(*bar::glarch);
