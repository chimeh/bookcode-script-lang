$word = "bookkeeper";
$word =~ s/ (?<letter> \p{alpha} ) \k<letter> /$+{letter}/gix;
#  $word is now "bokeper"
