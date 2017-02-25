$DEF_MODE = 0644;   # Can't use quotes here!
PROMPT: {
    print "New mode? ";
    $strmode = <STDIN>;
    exit unless defined $strmode;       # test for eof
    if ($strmode =~ /^\s*$/) {          # test for blank line
        $mode = $DEF_MODE;
    }
    elsif ($strmode !~ /^\d+$/) {
        say "Want numeric mode, not $strmode";
        redo PROMPT;
    }
    else {
        $mode = oct($strmode);          # converts "755" to 0755
    }
    chmod $mode, @files;
}
