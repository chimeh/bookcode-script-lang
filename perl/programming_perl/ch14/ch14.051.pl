use DotFiles;
tie %dot, "DotFiles";
if ( $dot{profile} =~ /MANPATH/ ||
     $dot{login}   =~ /MANPATH/ ||
     $dot{cshrc}   =~ /MANPATH/    ) {
    print "you seem to set your MANPATH\n";
}
